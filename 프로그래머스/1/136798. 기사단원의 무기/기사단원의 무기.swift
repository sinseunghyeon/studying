import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    
    var offensePowers: Array<Int> = []; // 병사의 공격력을 담을 변수
    
    for i in 1...number { // 병사의 번호가 1부터 시작되기 때문에 1...number
        if measure(i) > limit { // 공격력의 제한수치를 넘으면 power값을 저장
            offensePowers.append(power);
        } else {
            offensePowers.append(measure(i));    
        }
    }
    
    return offensePowers.reduce(0, +); // 배열 인덱스0부터 더하는 고차함수
}

func measure(_ number: Int) -> Int { // 병사 번호의 약수개수를 구하는 함수
    
    var count = 0;
    
    for i in 1...Int(sqrt(Double(number))){
        if number % i == 0 {
            if i * i == number {
                count += 1               
            } else{
                count += 2
            }
        }
    }
    return count;
}