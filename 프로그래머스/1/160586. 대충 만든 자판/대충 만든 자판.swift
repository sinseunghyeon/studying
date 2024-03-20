import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var dict: [Character: Int] = [:]
    var keymaps = keymap.map { $0.map { $0 } }
    var result: [Int] = []
    var click: Int = 0
    
    for str in keymaps {
        for char in str {
            if dict[char] == nil { // 딕셔너리가 비어있을 때
                dict[char] = str.firstIndex(of: char)! // char의 인덱스 값을 딕셔너리에 저장
            } else { // 딕셔너리가 비어있지 않을 때
                dict[char] = min(dict[char]!, str.firstIndex(of: char)!) // 딕셔너리의 값과 char의 인덱스 값 중에서 최소 값을 저장
            }
        }
    }
    print(dict);
    for str in targets {
        for char in str {
            if dict[char] != nil { // 딕셔너리가 비어있지 않으면
                click += dict[char]! + 1 // 인덱스 값 + 1을 click에 저장
            } else { // 딕셔너리가 비어있으면
                click = -1 // -1을 click에 저장
                break
            }
        }
        result.append(click) // 결과값 배열에 추가
        click = 0;
    }
    return result
}