import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    var parkArray: [[String]] = [] // 공원데이터를 2차원 배열로 받기
    var result: [Int] = [0, 0] // 현재 위치와 결과 위치를 담을 배열
    
    for i in 0..<park.count { // 2차원 배열에 값을 넣고, 시작 인덱스 값을 result에 넣기
        parkArray.append(park[i].map { String($0) })
        if let j = parkArray[i].firstIndex(of: "S") {
            result = [i, j]
        }
    }

    for i in 0..<routes.count { // routes의 길이만큼 반복
        let str = routes[i].components(separatedBy: " ").map { $0 } // 방향과 횟수를 담기
        
        switch str[0] {
        case "E":
            if result[1] + Int(str[1])! < parkArray[0].count {
                var count: Int = 0
                for i in 1...Int(str[1])! {
                    if parkArray[result[0]][result[1] + i] != "X" { // X가 아니면 +1
                        count += 1   
                    } else { // X가 나오면 초기화 시키고 break
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
    
    return result
}