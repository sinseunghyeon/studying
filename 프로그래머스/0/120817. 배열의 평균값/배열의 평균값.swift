import Foundation

func solution(_ numbers:[Int]) -> Double {
    guard (numbers.count >= 1 && numbers.count <= 100) else {
        return -1;
    }
    for index in numbers {
        guard index >= 0 && index <= 1000 else {
            return -1;
        }
    }
    return Double(numbers.reduce(0, +)) / Double(numbers.count);
}