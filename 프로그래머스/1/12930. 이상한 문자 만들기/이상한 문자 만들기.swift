func solution(_ s:String) -> String {
    
    var count: Int = 0;
    var result: String = "";
    
    for charS in s {
        if charS == " " {
            result += String(charS);
            count = 0;
        } else if count % 2 == 0 {
            result += String(charS).uppercased();
            count += 1;
        } else {
            result += String(charS).lowercased;
            count += 1;
        }
    }
    
    return result;
}