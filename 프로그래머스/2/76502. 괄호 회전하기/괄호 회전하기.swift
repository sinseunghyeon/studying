import Foundation

func solution(_ s:String) -> Int {
    var result = 0
    var s:String = s
    
    for i in s.indices {
        var stack: String = ""
        
        for j in s.indices {
            if let last = stack.last {
                if (s[j] == ")" && last == "(") || 
                    (s[j] == "]" && last == "[") || 
                    (s[j] == "}" && last == "{") {
                        stack.removeLast()
                        continue
                }
            }
            stack.append(s[j])
        }
        
        if stack.isEmpty {
            result += 1
        }
        
        let char = s.removeFirst()
        s.append(char)
    }
    return result
}