import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    guard (num1 <= 100 && num1 > 0) && (num2 <= 100 && num2 > 0) else {
        return -1;
    }
    // if (num1 < 0 && num1 >= 100) {
    //     return 0;
    // }
    // if (num2 < 0 && num2 >= 100) {
    //     return 0;
    // }
    return num1 / num2;
}