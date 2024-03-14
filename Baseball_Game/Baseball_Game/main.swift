
import Foundation

let setScore: SetScore = SetScore();
let findBaseballNumbers: FindBaseballNumbers = FindBaseballNumbers(setScore: setScore);
let startScreen: StartScreen = StartScreen(gameRepeat: true, inputRepeat: true, findBaseballNumbers: findBaseballNumbers, setScore: setScore);

startScreen.startScreen();


