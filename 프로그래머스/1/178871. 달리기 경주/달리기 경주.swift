import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var playersDict: [String: Int] = [:] // 처음 등수를 담을 딕셔너리
    var result: [String] = players // 결과 값 배열
    
    for (index, name) in players.enumerated() { // 처음 등수를 딕셔너리에 추가
        playersDict[name] = index
    }
    
    for name in callings {
        let player_grade = playersDict[name]! // 이름 불린 사람의 등수를 저장
        let player_name = result[player_grade - 1] // 추월된 사람의 이름을 저장
        
        result[player_grade - 1] = name // 추월한 등수로 이름 불린 사람의 이름을 저장
        result[player_grade] = player_name // 추월당한 등수로 추월된 사람의 이름을 저장
        playersDict[name] = player_grade - 1 // 현재 뒤바뀐 등수를 딕셔너리에 저장
        playersDict[player_name] = player_grade // 현재 뒤바뀐 등수를 딕셔너리에 저장
    }
    
    return result
}