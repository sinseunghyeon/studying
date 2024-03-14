
import Foundation

// 에러 출력 함수
func printError(_ error: CaseError) {
    switch error {
    case .cantChar:
        print("숫자만 입력할 수 있습니다.");
    case .cantSameNumber:
        print("중복된 숫자를 입력할 수 없습니다.");
    case .cantUseZero:
        print("첫번째에 0을 입력할 수 없습니다.");
    case .cantValue:
        print("올바른 값이 입력되지 않았습니다.");
    }
    
}
