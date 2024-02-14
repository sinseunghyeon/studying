func solution(_ x:Int, _ n:Int) -> [Int64] {
    var answer: [Int64] = [];
    
    guard (x >= -10000000 && x <= 10000000) else {
        return [-1];
    }
    
    guard (n > 0 && n <= 1000) else {
        return [-1];
    }
    
    for i in 1..<(n + 1) {
        answer.append(Int64(x * i));
    }
    
    return answer;
}