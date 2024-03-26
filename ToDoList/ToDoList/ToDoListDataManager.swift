
import Foundation

public class ToDoListDataManager {
    
    private var DataArray: [ToDoListData] = []
        
    init() {
        self.DataArray = [
            ToDoListData(title: "데일리 스크럼 작성", importance: .first),
            ToDoListData(title: "알고리즘 문제 풀기", importance: .first),
            ToDoListData(title: "10시 반 회의", importance: .first),
            ToDoListData(title: "알고리즘 풀이 블로그 작성"),
            ToDoListData(title: "점심", importance: .third),
            ToDoListData(title: "집중코딩", importance: .second),
            ToDoListData(title: "저녁"),
            ToDoListData(title: "TIL 작성"),
            ToDoListData(title: "8시 회의")
        ]
    }
        
    public func getTodoListData() -> [ToDoListData] {
        return DataArray
    }
    
    public func getToDoListCount() -> Int {
        return DataArray.count
    }
    
    public func getToDoListCompleted(_ row: Int) -> Bool {
        return DataArray[row].isCompleted
    }
    
    public func getToDoListImportance(_ row: Int) -> ImportanceType {
        return DataArray[row].importance ?? .nothing
    }
    
    public func getToDoListTitle(_ row: Int) -> String {
        return DataArray[row].title
    }
        
    public func updateTodoListData(_ title: String) {
        let todo = ToDoListData(title: title)
        DataArray.append(todo)
    }
        
    public func deleteTodoListData(_ row: Int) {
        DataArray.remove(at: row)
    }
        
    public func insertTodoListData(_ row: Int, _ toDoListData: ToDoListData) {
        DataArray.insert(toDoListData, at: row)
    }
}
