import Foundation

func solution(_ angle:Int) -> Int {
    
    guard angle > 0 && angle <= 180 else {
        return -1;
    }
    return angle < 90 ? 1 : angle == 90 ? 2 : angle < 180 ? 3 : 4;
}