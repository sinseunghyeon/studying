import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var result = 0
    var a = a
    var b = b
    
    while a != b {
        a = a % 2 == 0 ? a / 2 : (a + 1) / 2
        b = b % 2 == 0 ? b / 2 : (b + 1) / 2
        result += 1
    }

    return result
}