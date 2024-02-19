import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    
    guard (price >= 1 && price <= 2500) && (money >= 1 && money <= 1000000000) && (count >= 1 && count <= 2500) else {
        return -1;
    }
    
    var result: Int64 = Int64(money);
    
    for i in 1...count {
        result -= Int64(price * i);
    }
    
    if result < 0 {
        return -result;
    } else {
        return 0;
    }
}