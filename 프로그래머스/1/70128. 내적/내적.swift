import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    guard (a.count >= 1 && a.count <= 1000) && (b.count >= 1 && b.count <= 1000) else {
        return 0;
    }
    var result: Int = 0;
    
    for i in 0..<a.count {
        result += a[i] * b[i];
    }
    return result;
}