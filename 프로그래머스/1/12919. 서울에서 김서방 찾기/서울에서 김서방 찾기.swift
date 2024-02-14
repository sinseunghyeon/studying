func solution(_ seoul:[String]) -> String {
    var count: Int = 0;
    
    guard seoul.count >= 1 && seoul.count <= 1000 else {
        return "제한조건 벗어남";
    }
    
    for i in 0..<seoul.count {
        guard seoul[i].count >= 1 && seoul[i].count <= 20 else {
            return "제한조건 벗어남";
        }
        if seoul[i] == "Kim" {
            count = i;
            break;
        }
    }
    
    return "김서방은 \(count)에 있다";
}