import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var array: Array<String> = [];
    var result: Int = 0;
    
    for i in 0..<t.count - p.count + 1 {
        var startIdx = t.index(t.startIndex, offsetBy: i)
        var endIdx = t.index(startIdx, offsetBy: p.count - 1)
        var tSubstring = t[startIdx...endIdx];
        array.append(String(tSubstring));
    }
    
    for i in array {
        if Int(i)! <= Int(p)! {
            result += 1;
        }
    }
    
    return result;
}