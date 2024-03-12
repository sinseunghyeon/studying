import Foundation

func solution(_ nums:[Int]) -> Int {
    
    var result: Int = 0; // 소수 개수 결과 값 변수
    
    for i in 0..<nums.count {
        for j in i..<nums.count {
            for k in j..<nums.count {
                if nums[i] != nums[j] && nums[j] != nums[k] { // 배열 내의 3개의 숫자가 서로 같지 않을 때의 조건
                    var sum = nums[i] + nums[j] + nums[k]; // 3개의 숫자의 합
                    result += prime(sum); // 소수를 구하는 함수
                }
            }
        }
    }

    return result;
}

// 소수를 구하는 함수
func prime(_ number: Int) -> Int{
    var count: Int = 0;
    
    for i in 1...number {
        if number % i == 0 {
            count += 1;
        }
    }
    
    return count == 2 ? 1 : 0; // 소수면 1을 반환 아니면 0을 반환
}