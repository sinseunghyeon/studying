import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let number = String(n, radix: k)
    let numbers = number.split(separator: "0").map { Int(String($0))! }
    var result = 0

    for num in numbers {
        if isPrime(num) {
            result += 1
        }
    }
    
    return result
}

func isPrime(_ number: Int) -> Bool {
    
    if number == 1 {
        return false
    } else if number == 2 || number == 3 {
        return true
    }
    
    for i in 2...Int(sqrt(Double(number))) {
        if number % i == 0 {
            return false
        }
    }
    
    return true
}