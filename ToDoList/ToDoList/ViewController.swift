
import UIKit

class ViewController: UIViewController {
    
    var toDoListTitle = ["첫번째 일정", "두번째 일정", "세번째 일정"]
    var toDoListIsCompleted = [false, false, false]

    @IBOutlet weak var uiTableView: UITableView!
    
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
            self.refreshUITableView()
        }
        let cancelAction = UIAlertAction(title: "CANCEL", style: .cancel)
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        
        self.present(alert, animated: true)
    }
    
    
    
    // UITableView 부분
    func refreshUITableView() {
        uiTableView.frame = view.bounds
        uiTableView.dataSource = self
        uiTableView.delegate = self
        uiTableView.register(ToDoListCell.nib(), forCellReuseIdentifier: ToDoListCell.identifier)
        view.addSubview(uiTableView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.refreshUITableView()
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
}
