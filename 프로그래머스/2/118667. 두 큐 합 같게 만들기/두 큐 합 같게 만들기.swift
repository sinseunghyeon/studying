import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    let total = (queue1 + queue2).reduce(0, +)
    let target = total / 2
    var queueSum = queue1.reduce(0, +)
    var extendedQueue = queue1 + queue2 + queue1
    var start = 0
    var end = queue1.count
    var result = 0
    
    if total % 2 != 0 {
        return -1
    }
    
    while end < extendedQueue.count {
        if queueSum == target {
            return result
        } else if queueSum < target {
            queueSum += extendedQueue[end]
            end += 1
        } else {
            queueSum -= extendedQueue[start]
            start += 1
        }
        result += 1
    }

    return -1
}