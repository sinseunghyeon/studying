import Foundation

func solution(_ n:Int) -> Int {
    
    guard n >= 1 && n <= 100000000 else {
        return 0;
    }
    
    var n_3: String = String(n, radix: 3);
    n_3 = String(n_3.reversed());
    
    var result: Int = Int(n_3, radix: 3)!;
    
    return result;
}