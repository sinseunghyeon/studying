func solution(_ phone_number:String) -> String {
    guard phone_number.count >= 4 && phone_number.count <= 20 else {
        return "제한조건 벗어남";
    }
    var result: String = "";
    for i in 0..<phone_number.count - 4 {
        result += "*";
    }
    result += phone_number.suffix(4);
    return result;
}