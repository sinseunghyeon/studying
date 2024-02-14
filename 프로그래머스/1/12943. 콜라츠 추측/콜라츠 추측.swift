func solution(_ num:Int) -> Int {
    
    guard (num >= 1 && num <= 8000000) else {
        return -2;
    }
    
    var n: Int = num;
    
    if n == 1 {
        return 0;
    }
    
    for i in 0..<500 {
        if n == 1 {
            return i;
        } else if n % 2 == 0 {
            n = n / 2;
        } else {
            n = (n * 3) + 1;
        }
    }
    return -1;
}