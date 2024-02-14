func solution(_ x:Int) -> Bool {
    
    guard (x >= 1 && x <= 10000) else {
        return false;
    }
    var num: Int = x;
    var result: Int = 0;
    
    while num > 0 {
        result += num % 10;
        num = num / 10;
    }
    
    return (x % result == 0) ? true : false;
}