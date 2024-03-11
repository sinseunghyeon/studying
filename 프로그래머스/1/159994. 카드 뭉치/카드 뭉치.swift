import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var index1: Int = 0;
    var index2: Int = 0;
    
    for word in goal {
        if word == cards1[index1] {
            index1 += index1 < cards1.count - 1 ? 1 : 0;
        } else if word == cards2[index2] {
            index2 += index2 < cards2.count - 1 ? 1 : 0;
        } else {
            return "No";
        }
    }

    return "Yes";
}