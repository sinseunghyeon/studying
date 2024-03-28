import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    var result: [Int] = Array(repeating: 0, count: id_list.count)
    var idDict: [String: Int] = [:]
    var report: Set = Set(report)
    var idReport: [String: Set<String>] = [:]
    
    for id in id_list {
        idDict[id] = 0
        idReport[id] = []
    }
    
    for i in report {
        var reportArray = i.components(separatedBy: " ")
        idDict[reportArray[1]]! += 1
        idReport[reportArray[0]]!.insert(reportArray[1])
    }
    
    for i in 0..<result.count {
        for j in idDict.keys {
            if idDict[j]! >= k {
                if idReport[id_list[i]]!.contains(j) {
                    result[i] += 1
                }
            }
        }
    }
    return result
}