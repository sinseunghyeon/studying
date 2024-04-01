func solution(_ n:Int) -> Int {
    var f0 = 0
    var f1 = 1
    var f2 = 0
    
    for i in 1..<n {
        f2 = (f0 + f1) % 1234567
        f0 = f1
        f1 = f2
    }
    return f2
}