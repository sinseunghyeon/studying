import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    
    guard (num1 >= -50000 && num1 <= 50000) && (num2 >= -50000 && num2 <= 50000) else {
        return -1;
    }
    
    return num1 - num2;
}