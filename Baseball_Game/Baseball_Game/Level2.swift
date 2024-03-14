
import Foundation

class FindBaseballNumbers: InitBaseball {
    
    private var strike: Int = 0; // 스트라이크 변수
    private var ball: Int = 0;  // 볼 변수
    private var out: Int = 0;   // 아웃 변수
    
    private let setScore: SetScore; // SetScore() 인스턴스
    
    public var inputNumbers: Array<Int> = []; // 입력 받은 세 개의 숫자 배열
    public var baseballNumbers: Array<Int> = []; // 랜덤한 세 개의 숫자 야구번호 배열
    
    init(setScore: SetScore) {
        self.setScore = setScore;
    }
    
    // 입력 받은 배열과 랜덤 숫자 배열을 비교하는 함수
    public func checkNumbers(_ inputNumbers: Array<Int>) -> Bool {
        self.baseballNumbers = super.getBaseballNumbers();
        self.setScore.setInputCount();
        
        if !inputNumbers.isEmpty {
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
            
            return printResult();
        } else {
            return true;
        }
    }
    
    // 결과값 출력 함수
    public func printResult() -> Bool {

        if self.strike == 3 {
            print("");
            print("◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎ 축하합니다! 정답입니다! ◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎");
            
            self.setScore.setGameCount();
            self.setScore.setGameScores();
            self.setScore.setZeroInputCount();
            
            self.strike = 0;
            self.ball = 0;
            self.out = 0;
            
            return false;
        } else {
            print("\(strike) S, \(ball) B, \(out) Out");
            print("랜덤한 숫자 3개 : \(super.getBaseballNumbers())");
            print("");
            
            self.strike = 0;
            self.ball = 0;
            self.out = 0;
            
            return true;
        }
    }
    
}


// 입력 받은 값을 배열로 반환해주는 클래스
public class ChangeToInt {
    
    func changeStringToInt(_ inputString: String?) -> Array<Int> {
        
        var numbers: Array<Int> = [];
        
        guard let isNumber: String = inputString else {
            printError(.cantValue)
            return [];
        }
        
        for num in isNumber {
            
            guard let toInt: Int = num.wholeNumberValue else {
                printError(.cantChar);
                return [];
            }
            
            guard !numbers.contains(toInt) else {
                printError(.cantSameNumber);
                return[];
            }
            
            numbers.append(toInt);
        }

        return numbers;
    }
}
