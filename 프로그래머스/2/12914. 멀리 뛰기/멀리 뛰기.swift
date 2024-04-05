func solution(_ n:Int) -> Int {
    var result = [1, 2]
    
    for i in 0..<n {
        result.append((result[i] + result[i + 1]) % 1234567)
    }
    return result[n - 1]
}