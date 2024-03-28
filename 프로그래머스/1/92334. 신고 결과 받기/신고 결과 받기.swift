import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    var result: [Int] = Array(repeating: 0, count: id_list.count)
    var idDict: [String: Int] = [:]
    var report: Set = Set(report) // 중복값 제거를 위해 집합
    var idReport: [String: Set<String>] = [:] // 시간초과로 인해 집합으로 수정
    
    for id in id_list { // 딕셔너리 초기화
        idDict[id] = 0
        idReport[id] = []
    }
    
    for i in report { // 신고한 명단과 신고 당한 명단을 딕셔너리에 저장
        var reportArray = i.components(separatedBy: " ")
        idDict[reportArray[1]]! += 1
        idReport[reportArray[0]]!.insert(reportArray[1])
    }
    
    for i in 0..<result.count { // k값보다 클때 key값을 검색해서 신고한사람을 찾아내 result 배열에 + 1
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