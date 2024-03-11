import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var scores: Array<Int> = score.sorted(by: >);
    var box: Array<Int> = [];
    var result: Int = 0;

    for i in scores {
        if box.count < m {
            box.append(i);
            
            if (box.count == m) {
                result += box.min()! * m;
                box.removeAll();
            }
        }
    }
    return result;
}