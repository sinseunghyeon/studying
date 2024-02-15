import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    
    guard (a.count >= 1 && a.count <= 1000) && (b.count >= 1 && b.count <= 1000) else {
        return -2000;
    }
    
    var result: Int = 0;
    
    for i in 0..<a.count {
        
        guard (a[i] >= -1000 && a[i] <= 1000) && (b[i] >= -1000 && b[i] <= 1000) else {
            return -2000;
        }
        
        result += a[i] * b[i];
    }
    
    return result;
}