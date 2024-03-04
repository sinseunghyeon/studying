import Foundation

func solution(_ s:String) -> [Int] {
    let arS: Array<Character> = Array(s);
    var str: Array<Character> = [];
    var result: Array<Int> = [];
    
    for i in 0..<arS.count {
        if !str.contains(arS[i]) {
            str.append(arS[i]);
            result.append(-1);
        } else {
            for j in (0..<str.count).reversed() {
                if str[j] == arS[i] {
                    str.append(arS[i]);
                    result.append(i - j);
                    break;
                }
            }
        }
    }
    
    return result;
}