
import Foundation

public enum ImportanceType: Int {
    case first
    case second
    case third
    case nothing
    
    init? (value: Int) {
        switch value {
        case 1:
            self = .first
        case 2:
            self = .second
        case 3:
            self = .third
        default:
            return nil
        }
    }
}
