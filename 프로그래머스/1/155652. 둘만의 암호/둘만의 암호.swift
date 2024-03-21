import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    
    var result: [Character] = s.map { $0 } // s를 Character로 나누어 결과값 배열에 저장
    let alphabet: [Character] = "abcdefghijklmnopqrstuvwxyz".map { $0 } // 알파벳을 Character로 바꿔서 배열에 저장
    
    for i in 0..<result.count { // 결과값 배열의 카운트 만큼 반복
        if var j = alphabet.firstIndex(of: result[i]) { // 알파벳 배열에서 인덱스 값을 검색해 j에 저장
            var index = index // let인 index값을 var인 index로 저장 및 초기화
            
            while index != 0 { // index가 0이 될 때까지 반복
                j = j + 1 > 25 ? 0 : j + 1 // 'j + 1'이 알파벳 길이 값을 벗어나면 0으로, 벗어나지 않으면 'j + 1'로
                
                if skip.contains(alphabet[j]) { // skip에 현재 알파벳인덱스가 있으면 continue
                    continue
                } else {
                    index -= 1 // 없으면 index - 1
                    result[i] = alphabet[j] // 결과값 배열을 변경
                }
            }
        }
    }
    return String(result)
}