
import UIKit

class ViewController: UIViewController {
    
    public var toDoListData = ToDoListDataManager()

    @IBOutlet weak var uiTableView: UITableView!
    @IBOutlet weak var addButton: UIButton!
    
    @IBAction func addToDoList(_ sender: Any) {
        let title: String = "새로운 일정 추가"
        let message: String = "새로운 일정을 입력하세요."
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addTextField { textField in
            textField.placeholder = "새로운 일정 추가"
            textField.autocorrectionType = .no
            textField.spellCheckingType = .no
            textField.translatesAutoresizingMaskIntoConstraints = false
//            textField.frame = CGRect(x: 0, y: 0, width: 270, height: 24)
        }
        
        let okAction = UIAlertAction(title: "OK", style: .default) { (_) in
            guard let field = alert.textFields?.first else {
                return
            }
            let data = ToDoListData(title: field.text ?? "새로운 일정 추가")
            self.toDoListData.updateTodoListData(data.title)
            self.uiTableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "CANCEL", style: .cancel)
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true)
    }
    
    // UITableView 부분
    func settingUITableView() {
        uiTableView.frame = view.bounds
        uiTableView.dataSource = self
        uiTableView.delegate = self
        uiTableView.register(ToDoListCell.nib(), forCellReuseIdentifier: ToDoListCell.identifier)
        uiTableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(uiTableView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.settingUITableView()
        addButton.layer.cornerRadius = addButton.layer.frame.size.width / 2
        addButton.clipsToBounds = true
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoListData.getToDoListCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ToDoListCell.identifier, for: indexPath) as? ToDoListCell else {
            return UITableViewCell()
        }
        
        let nowDate = Date() // 현재의 Date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd"
        let str = dateFormatter.string(from: nowDate) // 현재 시간의 Date를 format에 맞춰 string으로 반환
        
        cell.toDoLabel.text = toDoListData.getToDoListTitle(indexPath.row)
        cell.importace.tintColor = toDoListData.getToDoListImportance(indexPath.row)
        cell.dateLabel.text = str
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // 데이터 소스에서 해당 데이터를 삭제합니다.
            toDoListData.deleteTodoListData(indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}
