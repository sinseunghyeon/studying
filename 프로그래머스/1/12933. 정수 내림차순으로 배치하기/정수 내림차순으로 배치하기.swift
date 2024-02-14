func solution(_ n:Int64) -> Int64 {
    
    var result: String! = "";
    
    guard (n >= 1 && n <= 8000000000) else {
        return -1;
    }
    
    result = String(String(n).sorted(by: >));
    
    return Int64(result)!;
}