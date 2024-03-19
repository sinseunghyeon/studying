import Foundation

func solution(_ s:String) -> Int {
    var result: Int = 0; // 결과값 카운트
    var sQueue: [Character] = Array(s); // 문자열 배열로 저장
    var firstChar: Character = sQueue[0]; // 문자열 첫번째 문자
    var sameCount: Int = 0; // 값이 같을 때의 카운트
    var differentCount: Int = 0; // 값이 다를 때의 카운트
    var isTrue: Bool = false; // 
    
     while !sQueue.isEmpty {
        let pop = sQueue.removeFirst();
        
        if isTrue { // 첫번째 문자를 pop으로 설정
            firstChar = pop;
            isTrue = false;
        }
        
        if firstChar == pop {
            sameCount += 1; // 같을 때
        } else {
            differentCount += 1; // 다를 때
        }
        
        if sameCount == differentCount || sQueue.isEmpty { // 카운트 값이 같을때 또는 배열이 비어있을 때
            result += 1;
            isTrue = true;
            sameCount = 0;
            differentCount = 0;
        }
    }
    return result;
}