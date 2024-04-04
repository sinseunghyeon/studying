func solution(_ arr:[Int]) -> Int {
    var firstNumber = arr[0]
    var secondNumber = 0
    var result = 0
    
    for num in arr {
        secondNumber = num
        firstNumber = firstNumber * secondNumber / gcd(firstNumber, secondNumber)
        result = firstNumber
    }
    
    return result
}

// 유클리드 호제법
func gcd(_ n: Int, _ m: Int) -> Int {
    return m == 0 ? n : gcd(m, n % m)
}