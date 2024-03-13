
import Foundation

var baseballGame: FindBaseballNumbers = FindBaseballNumbers();
let startGame: Main = Main();

while true {
    let inputString: String? = readLine();
    let inputNumbers: Array<Int> = startGame.changeStringToInt(inputString);
    baseballGame.checkNumbers(inputNumbers);
    baseballGame.printResult();

    print("랜덤한 숫자 3개 : \(baseballGame.getBaseballNumbers())");


}
