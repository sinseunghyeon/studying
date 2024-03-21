import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    
    var result: [Character] = s.map { $0 }
    let alphabet: [Character] = "abcdefghijklmnopqrstuvwxyz".map { $0 }
    
    for i in 0..<result.count {
        if var j = alphabet.firstIndex(of: result[i]) {
            var index = index
            
            while index != 0 {
                j = j + 1 > 25 ? 0 : j + 1
                
                if skip.contains(alphabet[j]) {
                    continue
                } else {
                    index -= 1
                    result[i] = alphabet[j]
                }
            }
        }
    }
    return String(result)
}