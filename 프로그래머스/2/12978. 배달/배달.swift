import Foundation

func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
    var result = 0
    var costs: [Int] = Array(repeating: Int.max, count: N+1)
    var graph: [[Int]] = Array(repeating: Array(repeating: Int.max, count: N+1), count: N+1) // 2차원 배열로 표 생성
    var queue: [(idx: Int, cost: Int)] = [(1, 0)]
    
    costs[1] = 0
    
    // 표에 음식 배달이 가능한 시간 저장
    for value in road {
        graph[value[0]] [value[1]] = min(value[2], graph[value[0]] [value[1]])
        graph[value[1]] [value[0]] = min(value[2], graph[value[1]] [value[0]])
    }
    
    while !queue.isEmpty {
        if let node = queue.first {
            for village in 1...N {
                if graph[node.idx][village] == Int.max {
                    continue
                }
            
                let nCost = node.cost + graph[node.idx][village]
                if graph[node.idx][village] != Int.max && nCost < costs[village] {
                    costs[village] = nCost
                    queue.append((village, nCost))
                }
            }
            queue.removeFirst()
        } 
    }
           
    result = costs.filter { $0 <= k }.count

    return result
}