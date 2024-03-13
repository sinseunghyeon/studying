import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var walls: Array<Int> = [];
    var result: Int = 0;
    
    for i in 1...n {
        walls.append(i);
    }
    
    for i in section {
        walls[i - 1] = 0;
    }
    
    for i in 0..<walls.count {
        if walls[i] == 0 {
            for j in 0..<m {
                if i + j < walls.count {
                    walls[i + j] += 1;
                }
            }
            result += 1;
        }
    }
    
    return result;
}