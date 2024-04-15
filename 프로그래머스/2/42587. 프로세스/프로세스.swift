import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = priorities
    var top = 0
    var result = 0
    var location = location
    
    while !queue.isEmpty {
        top = queue.max()!
        location -= 1
        if queue[0] == top {
            result += 1
            queue.removeFirst()
            if location < 0 {
                break 
            }
        } else {
            queue.append(queue[0])
            queue.removeFirst()
            location = location < 0 ? queue.count - 1 : location
        }
    }
    return result
}