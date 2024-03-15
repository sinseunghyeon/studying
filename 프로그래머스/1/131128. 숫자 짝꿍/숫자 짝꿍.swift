import Foundation

func solution(_ X:String, _ Y:String) -> String {
    
    var xCounts: Dictionary<Character, Int> = [:];
    var yCounts: Dictionary<Character, Int> = [:];
    var result: String = "";
    
    for char in X {
        xCounts[char, default: 0] += 1;
    }
    
    for char in Y {
        yCounts[char, default: 0] += 1;
    }
    
    for num in "9876543210" {
        let countInX = xCounts[num, default: 0];
        let countInY = yCounts[num, default: 0];
        let minCount = min(countInX, countInY);
        
        if minCount > 0 {
            result += String(repeating: num, count: minCount);
        }
    }
    
    if result.isEmpty {
        return "-1";
    } else if result.first == "0" {
        return "0";
    } else {
        return result;
    }
}