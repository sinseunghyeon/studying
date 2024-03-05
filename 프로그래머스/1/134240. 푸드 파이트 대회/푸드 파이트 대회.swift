import Foundation

func solution(_ food:[Int]) -> String {
    var result: String = "";
    
    for i in 0..<food.count {
        if i == 0 {
            continue;
        } else {
            for j in 0..<food[i] / 2 {
                result += String(i);
            }
        }
    }
    result += "0" + result.reversed();
    
    return result;
}