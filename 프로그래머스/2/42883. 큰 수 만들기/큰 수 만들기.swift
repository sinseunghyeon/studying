import Foundation

func solution(_ number:String, _ k:Int) -> String {
    let arr = Array(number)
    var resultStack: [Character] = []
    var k = k
    var length = arr.count
    
    for (idx, number) in arr.enumerated() {
        // 스택이 비어있지 않고, k > 0 일 때, 마지막으로 number의 값이 스택의 마지막 값보다 클 때
        while !resultStack.isEmpty && k > 0 && resultStack.last!.wholeNumberValue! < number.wholeNumberValue! {
            resultStack.removeLast()
            k -= 1
        }
        
        // 스택의 길이가 원하는 길이보다 작을 떄
        if resultStack.count < length - k {
            resultStack.append(number)
        }
    }

    return String(resultStack)
}