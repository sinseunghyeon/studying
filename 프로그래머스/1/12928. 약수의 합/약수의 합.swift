func solution(_ n:Int) -> Int {
    var result: Int = 0;
    
    guard (n >= 0 && n <= 3000) else {
        return -1;
    }
    
    for i in 1..<(n + 1) {
        if n % i == 0 {
            result += i;
        }
    }
    return result;
}