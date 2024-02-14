import Foundation

func solution(_ n:Int) -> Int
{
    var answer: Int = 0;
    var num: Int = n;
    
    guard (n > 0 && n <= 100000000) else {
        return -1;
    }
    
    while num > 0 {
        answer += (num % 10);
        num = num / 10;
    }
    
    return answer;
}