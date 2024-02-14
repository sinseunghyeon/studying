func solution(_ s:String) -> Int {
    
    guard (s.count >= 1 && s.count <= 5) else {
        return -1;
    }
    
    return Int(s)!;
}