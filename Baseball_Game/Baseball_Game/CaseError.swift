
import Foundation

// Level3 에러처리 Enum
enum CaseError : Error {
    case cantChar;
    case cantSameNumber;
    case cantUseZero;
    case cantValue;
    case cantLength;
}
