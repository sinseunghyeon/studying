import Foundation

func solution(_ s:String) -> Int {
    var result: Int = 0;
    var sQueue: [Character] = Array(s);
    var firstChar: Character = sQueue[0];
    var sameCount: Int = 0;
    var differentCount: Int = 0;
    var isTrue: Bool = false;
    
     while !sQueue.isEmpty {
        let pop = sQueue.removeFirst();
        
        if isTrue {
            firstChar = pop;
            isTrue = false;
        }
        
        if firstChar == pop {
            sameCount += 1;
        } else {
            differentCount += 1;
        }
        
        if sameCount == differentCount || sQueue.isEmpty {
            result += 1;
            isTrue = true;
            sameCount = 0;
            differentCount = 0;
        }
    }
    return result;
}