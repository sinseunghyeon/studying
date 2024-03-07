import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    
    var result: Array<Int> = []; // 결과값 배열
    var scores: Array<Int> = []; // k개를 담을 배열
    
    for i in score {
        if scores.count < k { // 배열에 k개가 차기 전까지 값을 추가
            scores.append(i);
        } else {
            if i > scores.min()! { // 값이 차면 새로운 score와 명예의전당 최저 score를 비교
                scores.removeFirst(); // 명예의전당 최저 score를 삭제
                scores.append(i); // 명예의전당에 새로운 score 추가
            }
        }
        scores.sort(by: <); // 명예의전당 순서를 오름차순으로 정렬
        result.append(scores.min()!); // 명예의전당 최저 score를 결과값 배열에 추가
    }
    return result;
}