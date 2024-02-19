func solution(_ s:String) -> Bool {
    
    guard s.count >= 1 && s.count <= 8 else {
        return false;
    }
    
    if s.count == 4 || s.count == 6 {
        return s.allSatisfy({ $0.isNumber });
        
    } else {
        return false;
        
    }
}