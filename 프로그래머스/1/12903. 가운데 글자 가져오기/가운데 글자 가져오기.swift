func solution(_ s:String) -> String {
    
    guard s.count >= 1 && s.count <= 100 else {
        return "제한 조건 벗어남";
    }
    var result: String = s;
    var num: Int = s.count / 2;
    
    if s.count % 2 == 1 {
        num = s.count / 2;
        return String(Array(result)[num]);
    } else {
        num = s.count / 2 - 1;
        return String(Array(result)[num...num + 1]);
    }
}