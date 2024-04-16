import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var result = 0
    var visited = [Bool](repeating: false, count: dungeons.count)
    
    func dfs(count: Int, pirodo: Int) {
        result = max(result, count)
        for i in 0..<dungeons.count{
            if !visited[i] && dungeons[i][0] <= pirodo {
                visited[i] = true
                dfs(count: count + 1, pirodo: pirodo - dungeons[i][1])
                visited[i] = false
            }
        }
    }
    
    dfs(count: result, pirodo: k)
    
    return result
}