import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    guard sizes.count >= 1 && sizes.count <= 10000 else {
        return 0;
    }
    
    var max_w: Int = 0;
    var max_h: Int = 0;
    
    for i in 0..<sizes.count {
        var w: Int = sizes[i][0];
        var h: Int = sizes[i][1];
        
        max_w = max(max_w, max(w, h));
        max_h = max(max_h, min(w, h));
    }
    
    return max_w * max_h;
}