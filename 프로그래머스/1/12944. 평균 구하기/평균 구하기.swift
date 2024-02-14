func solution(_ arr:[Int]) -> Double {
    
    guard (arr.count >= 1 && arr.count <= 100) else {
        return -1;
    }
    
    for num in arr {
        
        guard (num >= -10000 && num <= 10000) else {
            return -1;
        }
        
    }
    return Double(arr.reduce(0, +)) / Double(arr.count);
}