func solution(_ n:Int64) -> [Int] {
    var result: [Int] = [];
    var num : Int64 = n;
    
    guard (n > 0 && n < 10000000000) else {
        return [-1];
    }
    
    while num > 0 {
        result.append(Int(num % 10));
        num = num / 10;
    }
    
    return result;
}