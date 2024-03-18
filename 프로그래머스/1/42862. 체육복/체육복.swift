import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var subtractLost: Set<Int> = Set(lost).subtracting(reserve);
    var subtractReserve: Array<Int> = Array(Set(reserve).subtracting(lost)).sorted(by: <);
    
    for num in subtractReserve {
        if subtractLost.contains(num - 1) {
            subtractLost.remove(num - 1);
        } else if subtractLost.contains(num + 1) {
            subtractLost.remove(num + 1);
        }
        
    }
    return n - subtractLost.count;
}