import Foundation

func solution(_ s:String) -> Int {
    let numberWords: Dictionary<String, String> = [
        "zero": "0", "one": "1", "two": "2", "three": "3", "four": "4", 
        "five": "5", "six": "6", "seven": "7", "eight": "8", "nine": "9"];
    
    var str: String = "";
    var result: String = "";
    
    for i in s {
        if i >= "0" && i <= "9"{
            result += String(i);
        } else {
            str += String(i);
            if numberWords[str] != nil {
                result += numberWords[str]!;
                str = "";
            }
        }
    }
    
    return Int(result)!;
}