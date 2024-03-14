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
    
    for i in 1...Int(sqrt(Double(number))) { // number의 제곱근을 구한다 ex) 100의 제곱근은 10이기 때문에 1...10
        if number % i == 0 { // 나머지가 0일때 ex) 1, 2, 5, 10
            if i * i == number { // 나눈 수가 제곱근이면, 중복이 되기 때문에 카운트가 +1 ex) 제곱근인 10은 중복
                count += 1;
            } else{ // 나눈 수가 제곱근이 아니면, 중복이 아니기 때문에 +2 ex) 1, 2, 5 <=> 100, 50, 20 이기 때문에 +2
                count += 2;
            }
        }
    }
    return count;
}