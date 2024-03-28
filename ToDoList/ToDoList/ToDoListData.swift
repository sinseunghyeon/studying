
import Foundation

public struct ToDoListData {
    let id: Int
    let title: String
    var isCompleted: Bool
    let nowDate: String
    var importance: ImportanceType?

    init(title: String, importance: ImportanceType? = .nothing) {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd"
        let dateString = dateFormatter.string(from: date) // 현재 시간의 Date를 format에 맞춰 string으로 반환
        
        self.id = Int.random(in: 0...100)
        self.title = title
        self.isCompleted = false
        self.nowDate = dateString
        self.importance = importance
    }
}
