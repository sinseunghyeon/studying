import Foundation

func solution(_ number:[Int]) -> Int {
    var result: Int = 0;
    
    for i in 0..<number.count {
        for j in 0..<number.count {
            for k in 0..<number.count {
                if (i != j && j != k && k != i) {
                    result += (number[i] + number[j] + number[k] == 0) ? 1 : 0;
                }
            }
        }
    }
    return result / 6;
}