
import Foundation

struct ToDoListData {
    let id: Int
    let title: String
    var isCompleted: Bool
    var importance: ImportanceType?
    
    init(title: String, importance: ImportanceType? = nil) {
        self.id = Int.random(in: 0...100)
        self.title = title
        self.isCompleted = false
        self.importance = importance
    }
}
