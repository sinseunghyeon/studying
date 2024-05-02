import Foundation

func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    var start = 0
    var end = 0
    var sum = sequence[start]
    var result: [Int] = []
    
    while start < sequence.count - 1{
        if k < sum {
            sum -= sequence[start]
            start += 1
        } else if k > sum {
            if end < sequence.count - 1{
                end += 1
                sum += sequence[end]
            } else {
                sum -= sequence[start]
                start += 1
            }
        }
        
        if k == sum {
            if result.isEmpty{
                result = [start, end]
            } else {
                if result[1] - result[0] > end - start {
                    result = [start, end]
                } else {
                    sum -= sequence[start]
                    start += 1
                }
            }
            if end < sequence.count - 1 {
                end += 1
                sum += sequence[end]
            }
        }
    }
    
    return result
}