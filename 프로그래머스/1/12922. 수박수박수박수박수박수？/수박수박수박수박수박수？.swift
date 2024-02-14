func solution(_ n:Int) -> String {
    
    guard n >= 1 && n <= 10000 else {
        return "제한 조건 벗어남";
    }
    
    var result: String = "";
    
    for i in 0..<n {
        result += i % 2 == 0 ? "수" : "박";
    }
    
    return result;
}