import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var result: Int = 0; // 새로 받은 콜라
    var bottles: Int = n; // 현재 가지고 있는 빈 콜라
    
    while a <= bottles {
        result += ((bottles / a) * b);
        bottles = ((bottles / a) * b) + (bottles % a);
    }

    return result;
}