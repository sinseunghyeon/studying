import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var stack: [Int] = []
    let hamburger: [Int] = [1, 2, 3, 1]
    var result: Int = 0;
    
    for i in 0..<ingredient.count {
        stack.append(ingredient[i])
        
        if Array(stack.suffix(4)) == hamburger {
            stack.removeLast(4)
            result += 1
        }
    }
    return result
}