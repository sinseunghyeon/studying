import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var playersDict: [String: Int] = [:]
    var result: [String] = players
    
    for (index, name) in players.enumerated() {
        playersDict[name] = index
    }
    
    for name in callings {
        let player_grade = playersDict[name]!
        let player_name = result[player_grade - 1]
        
        result[player_grade - 1] = name
        result[player_grade] = player_name
        playersDict[name] = player_grade - 1
        playersDict[player_name] = player_grade
    }
    
    return result
}