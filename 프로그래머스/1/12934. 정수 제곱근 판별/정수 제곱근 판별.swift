import Foundation

func solution(_ n:Int64) -> Int64 {
    
    guard (n >= 1 && n <= 50000000000000) else {
        return 0;
    }
    
    var result: Int64 = Int64(sqrt(Double(n)));
    
    return (result * result == n) ? (result + 1) * (result + 1) : -1;
}