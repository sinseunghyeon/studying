
import Foundation

public class SetScore {
    
    private var gameScores: Dictionary<Int, Int> = [:]; // 게임 점수를 저장할 딕셔너리
    private var gameCount: Int = 0; // 총 게임 진행 횟수 변수
    private var inputCount: Int = 0; // 입력한 값 횟수 변수
    
    public func setGameCount() {
        self.gameCount += 1;
    }
    
    public func getGameCount() -> Int {
        return self.gameCount;
    }
    
    public func setInputCount() {
        self.inputCount += 1;
    }
    
    public func getInputCount() -> Int {
        return self.inputCount;
    }
    
    public func setZeroInputCount() {
        self.inputCount = 0;
    }
    
    public func setGameScores() {
        self.gameScores[gameCount] = self.inputCount;
    }
    
    public func getGameScores() -> Dictionary<Int, Int> {
        return self.gameScores;
    }
}
