import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    var result: Array<Int> = []
    
    let firstStudent: Array<Int> = [1, 2, 3, 4, 5]
    let secondStudent: Array<Int> = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdStudent: Array<Int> = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var firstCount: Int = 0;
    var secondCount: Int = 0;
    var thirdCount: Int = 0;
    
    for i in 0..<answers.count {
        if answers[i] == firstStudent[i % firstStudent.count] {
            firstCount += 1    
        }
        if answers[i] == secondStudent[i % secondStudent.count] {
            secondCount += 1
        }
        if answers[i] == thirdStudent[i % thirdStudent.count] {
            thirdCount += 1
        }
    }
    
    var maxOne = max(firstCount, secondCount, thirdCount)
    if maxOne == firstCount {
        result.append(1)
    }
    if maxOne == secondCount {
        result.append(2)
    }
    if maxOne == thirdCount {
        result.append(3)
    }
    return result
}