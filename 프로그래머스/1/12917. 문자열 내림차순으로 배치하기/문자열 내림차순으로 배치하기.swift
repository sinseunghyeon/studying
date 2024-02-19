func solution(_ s:String) -> String {
    
    guard s.count >= 1 else {
        return "제한조건 벗어남";
    }
    
    var result: Array<Character> = s.sorted(by: >);
    
    return String(result);
}