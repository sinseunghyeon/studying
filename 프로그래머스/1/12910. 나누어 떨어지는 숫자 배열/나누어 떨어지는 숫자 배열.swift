func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    
    var result: [Int] = [];
    
    guard divisor >= 1 && arr.count >= 1 else {
        return [-2];
    }
    
    for i in 0..<arr.count {
        if arr[i] % divisor == 0 {
            result.append(arr[i]);
        }
    }
    
    if result == [] {
        result.append(-1);
    }
    
    result.sort(by: <);
    
    return result;
}