func solution(_ s:String) -> String {
    var array: [Int] = s.components(separatedBy: " ").map { Int($0)! }
    var result: String = ""
    result += String(array.min()!) + " " + String(array.max()!)
    return result
}