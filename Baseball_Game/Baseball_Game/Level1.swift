
import Foundation

public class Baseball {
    
    private var baseballNumbers: Array<Int> = []; // 랜덤한 세 개의 숫자 야구번호 배열
    
    // 숫자 야구 번호 초기화
    init() {
        while baseballNumbers.count < 3 {
            
            var randomNumber: Int = Int.random(in: 1...9);
            
            if !baseballNumbers.contains(randomNumber) {
                self.baseballNumbers.append(randomNumber);
            }
        }
    }
    
    // 외부에서 숫자 야구 번호 값을 받아올 때 사용
    public func getBaseballNumbers() -> Array<Int> {
        return baseballNumbers;
    }
    
    // 외부에서 숫자 야구 번호 값을 입력할 때 사용
    public func setBaseballNumbers(_ baseballNumbers: Array<Int>) {
        self.baseballNumbers = baseballNumbers;
    }
    
}


