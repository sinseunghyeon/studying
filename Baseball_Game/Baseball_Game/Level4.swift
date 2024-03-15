
import Foundation

public class StartScreen {
    
    var gameRepeat: Bool = true;
    var inputRepeat: Bool = true;
    var findBaseballNumbers: FindBaseballNumbers;
    var setScore: SetScore;
    let changeToInt: ChangeToInt = ChangeToInt();
    
    init(gameRepeat: Bool, inputRepeat: Bool, findBaseballNumbers: FindBaseballNumbers, setScore: SetScore) {
        self.gameRepeat = gameRepeat
        self.inputRepeat = inputRepeat
        self.findBaseballNumbers = findBaseballNumbers
        self.setScore = setScore
    }
    
    public func startScreen() {
        
        while gameRepeat {
            
            print("◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎");
            print("◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎ 환영합니다! 원하시는 번호를 입력해주세요 ◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎");
            print("◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎");
            print("◼︎      1. 게임 시작하기                              ◼︎");
            print("◼︎      2. 게임기록 보기                              ◼︎");
            print("◼︎      3. 종료하기                                  ◼︎");
            print("◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎");
            print("입력 값 : ", terminator: " ");
            
            if let inputNumber: String = readLine() {
                if let toInt: Int = Int(inputNumber) {
                    switch toInt {
                    case 1:
                        findBaseballNumbers = FindBaseballNumbers(setScore: self.setScore);
                        print("");
                        print("◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎ 게임을 시작합니다. ◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎");
                        
                        while inputRepeat {
                            print("숫자를 입력하세요 : ", terminator: " ");
                            
                            let inputString: String? = readLine();
                            let inputNumbers: Array<Int> = changeToInt.changeStringToInt(inputString);
                            
                            inputRepeat = findBaseballNumbers.checkNumbers(inputNumbers);

                            print("");
                        }
                        inputRepeat = true;
                        break;
                        
                    case 2:
                        print("");
                        print("◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎ 게임 기록을 확인합니다. ◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎");
                        
                        let gameScores: Dictionary<Int, Int> = setScore.getGameScores();
                        
                        if !gameScores.isEmpty {
                            for i in 0..<gameScores.count {
                                print("\(i + 1)번째 게임 : 시도 횟수 => \(gameScores[i + 1, default: 0])");
                            }
                            print("");
                        } else {
                            print("게임 기록이 없습니다.");
                            print("");
                        }
                        break;
                        
                    case 3: // Level6 게임종료 구현
                        print("");
                        print("◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎ 게임을 종료합니다. ◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎◼︎");
                        gameRepeat = false;
                        break;
                        
                    default:
                        printError(.cantValue);
                    }
                } else {
                    printError(.cantChar);
                }
            } else {
                printError(.cantValue);
            }
        }
    }
}
