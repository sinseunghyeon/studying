func solution(_ arr:[Int]) -> [Int] {
    
    var min: Int = arr[0];
    var num: Int = 0;
    var result: [Int] = arr;
    
    guard result.count >= 1 else {
        return [-2];
    }
    
    for i in 0..<result.count {
        if result.count == 1 {
            return [-1];
        } else if min > result[i] {
            min = result[i];
            num = i;
        }
    }
    result.remove(at: num)
    
    return result;
}