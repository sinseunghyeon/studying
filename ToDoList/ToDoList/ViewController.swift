
import UIKit

class ViewController: UIViewController {
    
    public var toDoListTitle = ["첫번째 일정", "두번째 일정", "세번째 일정"]
    public var toDoListIsCompleted = [false, false, false]

    @IBOutlet weak var uiTableView: UITableView!
    @IBOutlet weak var addButton: UIButton!
    
    @IBAction func addToDoList(_ sender: Any) {
        let title: String = "새로운 일정 추가"
        let message: String = "새로운 일정을 입력하세요."
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addTextField { textField in
            textField.placeholder = "새로운 일정 추가"
        }
        
        let okAction = UIAlertAction(title: "OK", style: .default) { (_) in
            guard let field = alert.textFields?.first else {
                return
            }
            let data = ToDoListData(title: field.text ?? "새로운 일정 추가")
            self.toDoListTitle.append(data.title)
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
        return toDoListTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ToDoListCell.identifier, for: indexPath) as? ToDoListCell else {
            return UITableViewCell()
        }
        
        cell.toDoLabel.text = toDoListTitle[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // 데이터 소스에서 해당 데이터를 삭제합니다.
            toDoListTitle.remove(at: indexPath.row)
            // 테이블 뷰에서 셀을 삭제합니다.
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}
