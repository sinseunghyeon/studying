
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var toDoListData = ["Item 1", "Item 2", "Item 3"]

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
            self.toDoListData.append(data.title)
            self.refreshUITableView()
        }
        let cancelAction = UIAlertAction(title: "CANCEL", style: .cancel)
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        
        self.present(alert, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoListData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
                cell.textLabel?.text = toDoListData[indexPath.row]
                return cell
    }
    
    // UITableView 부분
    func refreshUITableView() {
        uiTableView.frame = view.bounds
        uiTableView.dataSource = self
        uiTableView.delegate = self
        uiTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        view.addSubview(uiTableView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.refreshUITableView()
    }


}

