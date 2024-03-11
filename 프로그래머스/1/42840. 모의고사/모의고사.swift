import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    var result: Array<Int> = [] // 정답을 출력할 변수
    
    let firstStudent: Array<Int> = [1, 2, 3, 4, 5] // 첫번째 학생이 찍는 정답
    let secondStudent: Array<Int> = [2, 1, 2, 3, 2, 4, 2, 5] // 두번째 학생이 찍는 정답
    let thirdStudent: Array<Int> = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5] // 세번째 학생이 찍는 정답
    
    var firstCount: Int = 0; // 첫번째 학생의 정답 수
    var secondCount: Int = 0; // 두번째 학생의 정답 수
    var thirdCount: Int = 0; // 세번째 학생의 정답 수
    
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
    
    var maxOne = max(firstCount, secondCount, thirdCount) // 세 학생의 최대점수
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