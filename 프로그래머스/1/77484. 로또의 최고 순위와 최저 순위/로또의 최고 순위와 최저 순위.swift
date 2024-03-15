import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
    var result: Array<Int> = []; // 결과값 출력할 배열
    var ranking: Dictionary<Int, Int> = [0: 6, 1: 6, 2: 5, 3: 4, 4: 3, 5: 2, 6: 1]; // 맞춘 개수에 따른 등수 딕셔너리
    var equalCount: Int = 0; // 같은 값 카운트
    var zeroCount: Int = 0; // 0값 카운트
    
    for i in lottos {
        if win_nums.contains(i) {
            equalCount += 1; // 같은 값 카운트
        } else if i == 0 {
            zeroCount += 1; // 0 카운트
        }
    }
    
    result.append(ranking[equalCount + zeroCount]!); // 최고 등수
    result.append(ranking[equalCount]!); // 최저 등수
    return result;
}