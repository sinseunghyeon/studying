
import Foundation

class FindBaseballNumbers: Baseball {
    
    private var strike: Int = 0; // 스트라이크 변수
    private var ball: Int = 0;  // 볼 변수
    private var out: Int = 0;   // 아웃 변수
    
    public var inputNumbers: Array<Int> = []; // 입력 받은 세 개의 숫자 배열
    public var baseballNumbers: Array<Int> = []; // 랜덤한 세 개의 숫자 야구번호 배열
    
    // 입력 받은 배열과 랜덤 숫자 배열을 비교하는 함수
    public func checkNumbers(_ inputNumbers: Array<Int>) {
        self.baseballNumbers = super.getBaseballNumbers();
        
        for index in 0..<inputNumbers.count {
            if baseballNumbers.contains(inputNumbers[index]) {
                if inputNumbers[index] == baseballNumbers[index] {
                    self.strike += 1;
                } else {
                    self.ball += 1;
                }
            } else {
                self.out += 1;
            }
        }
    }
    
    // 결과값 출력 함수
    public func printResult() {
        print("\(strike) S, \(ball) B, \(out) Out");
        if self.strike == 3 {
            print("축하합니다! 정답입니다!")
        }
        self.strike = 0;
        self.ball = 0;
        self.out = 0;
    }
    
}



public class Main {
    
    func changeStringToInt(_ inputString: String?) -> Array<Int> {
        
        var numbers: Array<Int> = [];
        
        guard let isNumber: String = inputString else {
            print("올바른 값이 입력되지 않았습니다.");
            return [];
        }
        
        for num in isNumber {
            
            guard let toInt: Int = num.wholeNumberValue else {
                printError(.cantChar);
                return [];
            }
            
            guard toInt != 0 && !numbers.contains(toInt) else {
                if toInt == 0 {
                    printError(.cantUseZero);
                } else {
                    printError(.cantSameNumber);
                }
                return[];
            }
            
            numbers.append(toInt);
        }

        return numbers;
    }
}
