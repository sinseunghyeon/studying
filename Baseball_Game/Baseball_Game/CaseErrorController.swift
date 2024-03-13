
import Foundation

// 에러 출력 함수
func printError(_ error: CaseError) {
    switch error {
    case .cantChar:
        print("정수만 입력할 수 있습니다.");
    case .cantSameNumber:
        print("중복된 정수를 입력할 수 없습니다.");
    case .cantUseZero:
        print("0을 입력할 수 없습니다.");
    }
    
}
