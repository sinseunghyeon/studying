import Foundation

func solution(_ babbling:[String]) -> Int {
    let canTell = ["aya", "ye", "woo", "ma"];
    var result = 0;
    
    for word in babbling {
        var previous: String = "";
        var present: String = "";
        
        for char in word {
            present += String(char);
            
            if canTell.contains(present) && previous != present {
                previous = present;
                present = "";
            }
        }
        if present.isEmpty {
            result += 1;
        }
    }
    return result;
}