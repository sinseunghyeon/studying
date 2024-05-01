import Foundation

func solution(_ n:Int) -> [Int] {
    var result = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    var x = -1
    var y = 0
    var num = 1

    for i in 0..<n {
        for _ in 0..<(n - i) {
            if i % 3 == 0 { // Down
                x += 1
            } else if i % 3 == 1 {  // Right
                y += 1
            } else {    // Up
                x -= 1
                y -= 1
            }
            
            result[x][y] = num
            num += 1
        }
    }

    return result.flatMap { $0 }.filter { $0 != 0 }
}