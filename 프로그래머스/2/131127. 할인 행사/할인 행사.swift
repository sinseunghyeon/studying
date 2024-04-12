import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var result = 0
    var wantDic: [String: Int] = [:]
    
    for i in 0..<want.count {
        wantDic[want[i]] = number[i]
    }

    for i in 0...discount.count - 10 {
        var items = wantDic
        
        for day in i..<i + 10 {
            items[discount[day]] = (items[discount[day]] ?? 0) - 1
            if items[discount[day]] == 0 {
                items.removeValue(forKey: discount[day])
            }
        }
        
        if items.isEmpty {
            result += 1
        }
        
    }
    return result
}