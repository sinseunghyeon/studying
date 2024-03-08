func solution(_ a:Int, _ b:Int) -> String {
    // 출력할 요일
    let days: Array<String> = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]; 
    
    // 매 달 시작하는 요일을 딕셔너리에 저장
    let months: Dictionary<Int, Int> = [1: 5, 2: 1, 3: 2, 4: 5, 5: 0, 6: 3, 
                                        7: 5, 8: 1, 9: 4, 10: 6, 11: 2, 12: 4];
    
    // 1일부터 시작이니깐 (b - 1) + 시작하는 요일 / 7의 나머지
    var index: Int = (months[a]! + (b - 1)) % 7; 

    return days[index];
}