func solution(_ a:Int, _ b:Int) -> String {
    let days: Array<String> = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"];
    let months: Dictionary<Int, Int> = [1: 5, 2: 1, 3: 2, 4: 5, 5: 0, 6: 3, 7: 5, 8: 1, 9: 4, 10: 6, 11: 2, 12: 4];
    
    var index: Int = (months[a]! + (b - 1)) % 7;

    
    return days[index];
}