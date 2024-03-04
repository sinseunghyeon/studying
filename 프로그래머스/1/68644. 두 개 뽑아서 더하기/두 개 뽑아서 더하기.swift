import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result: Array<Int> = [];
    
    for i in 0..<numbers.count - 1 {
        for j in i + 1..<numbers.count {
            let num: Int = numbers[i] + numbers[j];
            if !result.contains(num) {
                result.append(num);
            }
        }
    }
    result.sort(by: <);
    return result;
}