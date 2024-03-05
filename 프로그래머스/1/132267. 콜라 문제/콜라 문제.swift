import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var result: Int = 0;
    var bottles: Int = n;
    
    while a <= bottles {
        result += ((bottles / a) * b);
        bottles = ((bottles / a) * b) + (bottles % a);
    }

    return result;
}