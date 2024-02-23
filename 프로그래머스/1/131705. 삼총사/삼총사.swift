import Foundation

func solution(_ number:[Int]) -> Int {
    var result: Int = 0;
    
    for i in 0..<number.count {
        for j in i + 1..<number.count {
            for k in j + 1..<number.count {
                result += (number[i] + number[j] + number[k] == 0) ? 1 : 0;
            }
        }
    }
    
    return result;
}