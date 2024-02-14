func solution(_ a:Int, _ b:Int) -> Int64 {
    
    var result: Int64 = 0;
    
    guard (a >= -10000000 && a <= 10000000) && (b >= -10000000 && b <= 10000000) else {
        return -1;
    }
    
    for i in a < b ? a...b : b...a {
        result += Int64(i);
    }
    
    if a == b {
        return Int64(a);
    }
    return result;
}