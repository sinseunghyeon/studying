import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    var parkArray: [[String]] = []
    var result: [Int] = [0, 0]
    
    for i in 0..<park.count {
        parkArray.append(park[i].map { String($0) })
        if let j = parkArray[i].firstIndex(of: "S") {
            result = [i, j]
        }
    }
    print(result)
    for i in 0..<routes.count {
        let str = routes[i].components(separatedBy: " ").map { $0 }
        
        switch str[0] {
        case "E":
            if result[1] + Int(str[1])! < parkArray[0].count {
                var count: Int = 0
                for i in 1...Int(str[1])! {
                    if parkArray[result[0]][result[1] + i] != "X" {
                        count += 1   
                    } else {
                        count = 0
                        break
                    }
                }
                result[1] += count
            }
        case "W":
            if result[1] - Int(str[1])! >= 0 {
                var count: Int = 0
                for i in 1...Int(str[1])! {
                    if parkArray[result[0]][result[1] - i] != "X" {
                        count += 1   
                    } else {
                        count = 0
                        break
                    }
                }
                result[1] -= count
            }
        case "S":
            if result[0] + Int(str[1])! < parkArray.count {
                var count: Int = 0
                for i in 1...Int(str[1])! {
                    if parkArray[result[0] + i][result[1]] != "X" {
                        count += 1   
                    } else {
                        count = 0
                        break
                    }
                }
                result[0] += count
            }
        case "N":
            if result[0] - Int(str[1])! >= 0 {
                var count: Int = 0
                for i in 1...Int(str[1])! {
                    if parkArray[result[0] - i][result[1]] != "X" {
                        count += 1   
                    } else {
                        count = 0
                        break
                    }
                }
                result[0] -= count
            }
        default:
            continue
        }
    }
    
    print(parkArray)
    return result
}