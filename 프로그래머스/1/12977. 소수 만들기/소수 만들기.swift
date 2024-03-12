import Foundation

func solution(_ nums:[Int]) -> Int {
    var result: Int = 0;
    
    for i in 0..<nums.count {
        for j in i..<nums.count {
            for k in j..<nums.count {
                if nums[i] != nums[j] && nums[j] != nums[k] {
                    var sum = nums[i] + nums[j] + nums[k];
                    result += decimal(sum);
                }
            }
        }
    }

    return result;
}

func decimal(_ number: Int) -> Int{
    var count: Int = 0;
    
    for i in 1...number {
        if number % i == 0 {
            count += 1;
        }
    }
    
    return count == 2 ? 1 : 0;
}