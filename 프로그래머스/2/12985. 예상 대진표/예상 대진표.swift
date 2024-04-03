import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var result = 0
    var a = a
    var b = b
    
    while a != b { // a == b 이면 같은 라운드 이므로 종료
        a = a % 2 == 0 ? a / 2 : (a + 1) / 2 // a가 짝수이면 /2 홀수이면 +1 후 /2
        b = b % 2 == 0 ? b / 2 : (b + 1) / 2 // b가 짝수이면 /2 홀수이면 +1 후 /2
        result += 1
    }

    return result
}