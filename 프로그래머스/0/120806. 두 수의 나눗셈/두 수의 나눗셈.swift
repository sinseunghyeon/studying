import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    
    guard (num1 > 0 && num1 <= 100) && (num2 > 0 && num2 <= 100) else {
        return -1;
    }

    return Int((Float(num1) / Float(num2)) * 1000);
}