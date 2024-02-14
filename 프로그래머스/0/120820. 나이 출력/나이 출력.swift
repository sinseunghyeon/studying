import Foundation

func solution(_ age:Int) -> Int {
    
    guard age > 0 && age <= 120 else {
        return -1;
    }
    return (2022 - age) + 1;
}