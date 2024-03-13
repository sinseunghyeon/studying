import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    
    var walls: Array<Int> = []; // 벽 배열 생성
    var result: Int = 0; // 결과값 카운트 생성
    
    for i in 1...n { // 벽에 번호를 넣기
        walls.append(i);
    }
    
    for i in section { // 칠해야 할 부분을 0으로 설정
        walls[i - 1] = 0;
    }
    
    for i in 0..<walls.count { // 벽을 탐색하면서 0인 부분을 칠해 카운트 업
        if walls[i] == 0 {
            for j in 0..<m {
                if i + j < walls.count { // 벽의 범위를 벗어나면 안되게 설정
                    walls[i + j] += 1;
                }
            }
            result += 1; // 카운트 업
        }
    }
    
    return result;
}