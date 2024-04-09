import Foundation

func solution(_ elements:[Int]) -> Int {
    var result: Set = Set(elements)
    
    for i in 0..<elements.count {
        var sum = 0
        for j in 0..<elements.count {
            var index = i + j >= elements.count ? (i + j) - elements.count : i + j
            sum += elements[index]
            result.insert(sum)
        }
    }
    return result.count
}