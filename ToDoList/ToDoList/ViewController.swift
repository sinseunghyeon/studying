
import UIKit

class ViewController: UIViewController {
    
    public var toDoListData = ToDoListDataManager()
    public let pickerData = ["1st", "2nd", "3rd", "Nothing"]

    @IBOutlet weak var uiTableView: UITableView!
    @IBOutlet weak var addButton: UIButton!
    
    @IBAction func addToDoList(_ sender: Any) {
        let title: String = "새로운 일정 추가"
        let message: String = "새로운 일정을 입력하세요.\n\n\n\n\n\n"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addTextField { textField in
            textField.placeholder = "새로운 일정 추가"
            textField.autocorrectionType = .no
            textField.spellCheckingType = .no
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.frame = CGRect(x: 0, y: 0, width: 270, height: 24)
        }
        
        // UIPickerView를 생성하고 설정합니다.
        let pickerView = UIPickerView(frame: CGRect(x: 5, y: 50, width: 260, height: 140))
        pickerView.dataSource = self
        pickerView.delegate = self

        // UIAlertController의 view에 UIPickerView를 추가합니다.
        alert.view.addSubview(pickerView)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { (_) in
            guard let field = alert.textFields?.first else {
                return
            }

//            let picker = self.pickerView(pickerView, didSelectRow: , inComponent: )
//            print(picker)
            let data = ToDoListData(title: field.text ?? "새로운 일정 추가")
            print(data)
            self.toDoListData.updateTodoListData(data.title, importace: data.importance)
            let indexPath = IndexPath(row: self.toDoListData.getToDoListCount() - 1, section: 0)
            self.uiTableView.insertRows(at: [indexPath], with: .fade)
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
        
        cell.toDoLabel.text = toDoListData.getToDoListTitle(indexPath.row)
        cell.importace.tintColor = toDoListData.getToDoListImportance(indexPath.row)
        cell.dateLabel.text = toDoListData.getToDoListDate(indexPath.row)
        
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

extension ViewController : UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
        
    // 사용자가 피커 뷰의 특정 행을 선택했을 때 호출됩니다.
    private func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) -> ImportanceType {
        // 여기서 선택된 행의 데이터를 처리합니다.
        switch pickerData[row] {
        case "1st":
            return .first
        case "2nd":
            return .second
        case "3rd":
            return .third
        default:
            return .nothing
        }
    }
}
