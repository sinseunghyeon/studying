import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var result = 0
    
    func dfs(sum: Int, depth: Int) {
        
        if depth == numbers.count {
            if sum == target {
                result += 1
            }
            return
        }
        
        dfs(sum: sum + numbers[depth], depth: depth + 1)
        dfs(sum: sum - numbers[depth], depth: depth + 1)
    }
    
    dfs(sum: 0, depth: 0)
    
    return result
}

