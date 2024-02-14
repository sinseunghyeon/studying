import Foundation

func solution(_ n:Int) -> Int {
    
    var result: Int = 0;
    
    guard (n >= 3 && n <= 1000000) else {
        return -1;
    }
    
    for i in 1..<(n + 1) {
        if n % i == 1 {
            result = i;
            break;
        }
    }
    return result;
}