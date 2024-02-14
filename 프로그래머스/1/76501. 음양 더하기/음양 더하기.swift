import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    
    var result: Int = 0;
    
    guard (absolutes.count >= 1 && absolutes.count <= 1000) && (signs.count == absolutes.count) else {
        return 0;
    }
    
    for i in 0..<absolutes.count {
        result = signs[i] == true ? result + absolutes[i] : result - absolutes[i];
    }
    return result;
}