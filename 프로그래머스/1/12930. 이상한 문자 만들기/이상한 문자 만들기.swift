func solution(_ s:String) -> String {
    
    var count: Int = 0;
    var result: String = "";
    
    for i in 0..<s.count {
        if s[s.index(s.startIndex, offsetBy: i)] == " " {
            result += String(s[s.index(s.startIndex, offsetBy: i)]);
            count = 0;
        } else if count % 2 == 0 {
            result += String(s[s.index(s.startIndex, offsetBy: i)]).uppercased();
            count += 1;
        } else {
            result += String(s[s.index(s.startIndex, offsetBy: i)]).lowercased;
            count += 1;
        }
    }
    
    return result;
}