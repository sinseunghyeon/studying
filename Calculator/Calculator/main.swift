
import Foundation

// Level. 1

//class Calculator {
//    
//    private let num1: Int;
//    private let num2: Int;
//    
//    init(num1: Int, num2: Int) {
//        self.num1 = num1;
//        self.num2 = num2;
//    }
//    
//    func add() -> Int {
//        return num1 + num2;
//    }
//    
//    func substract() -> Int {
//        return num1 - num2;
//    }
//    
//    func multiply() -> Int {
//        return num1 * num2;
//    }
//    
//    func divide() -> Double {
//        return Double(num1) / Double(num2);
//    }
//}




// Level. 2

//class Calculator {
//    
//    private let num1: Int;
//    private let num2: Int;
//    
//    init(num1: Int, num2: Int) {
//        self.num1 = num1;
//        self.num2 = num2;
//    }
//    
//    func add() -> Int {
//        return num1 + num2;
//    }
//    
//    func substract() -> Int {
//        return num1 - num2;
//    }
//    
//    func multiply() -> Int {
//        return num1 * num2;
//    }
//    
//    func divide() -> Double {
//        return Double(num1) / Double(num2);
//    }
//    
//    func remain() -> Int {
//        return num1 % num2;
//    }
//}




// Level. 3

//class Calculator {
//    
//    private let num1: Int;
//    private let num2: Int;
//    
//    init(_ num1: Int, _ num2: Int) {
//        self.num1 = num1;
//        self.num2 = num2;
//    }
//    
//    func calculation(_ op: String) -> Double {
//        switch op {
//        case "AddOperation":
//            let resultFunc = AddOperation();
//            return resultFunc.operation(num1, num2);
//        case "SubstractOperation":
//            let resultFunc = SubstractOperation();
//            return resultFunc.operation(num1, num2);
//        case "MultiplyOperation":
//            let resultFunc = MultiplyOperation();
//            return resultFunc.operation(num1, num2);
//        case "DivideOperation":
//            let resultFunc = DivideOperation();
//            return resultFunc.operation(num1, num2);
//        case "RemainOperation":
//            let resultFunc = RemainderOperation();
//            return resultFunc.operation(num1, num2);
//        default:
//            return 0;
//        }
//    }
//}
//
//class AddOperation {
//    
//    func operation(_ num1: Int, _ num2: Int) -> Double {
//        let add: Double? = Double(num1) + Double(num2);
//        if let result = add {
//            return result;
//        }
//    }
//}
//
//class SubstractOperation {
//    
//    func operation(_ num1: Int, _ num2: Int) -> Double {
//        let substract: Double? = Double(num1) - Double(num2);
//        if let result = substract {
//            return result;
//        }
//    }
//}
//
//class MultiplyOperation {
//    
//    func operation(_ num1: Int, _ num2: Int) -> Double {
//        let multiply: Double? = Double(num1) * Double(num2);
//        if let result = multiply {
//            return result;
//        }
//    }
//}
//
//class DivideOperation {
//    
//    func operation(_ num1: Int, _ num2: Int) -> Double {
//        let divided: Double? = Double(num1) / Double(num2);
//        if let result = divided {
//            return result;
//        }
//    }
//}
//
//class RemainderOperation {
//    
//    func operation(_ num1: Int, _ num2: Int) -> Double {
//        let remainder: Double? = Double(num1).truncatingRemainder(dividingBy: Double(num2));
//        if let result = remainder {
//            return result;
//        }
//    }
//}

//let calculator = Calculator(5, 6); // 프로퍼티 초기화
//
//let addResult = calculator.calculation("AddOperation"); // 덧셈 연산;
//let subtractResult = calculator.calculation("SubstractOperation"); // 뺄셈 연산
//let multiplyResult = calculator.calculation("MultiplyOperation"); // 곱셈 연산
//let divideResult = calculator.calculation("DivideOperation"); // 나눗셈 연산
//let remainderResult = calculator.calculation("RemainderOperation"); // 나눗셈 연산
//
//print("addResult : \(addResult)");
//print("subtractResult : \(subtractResult)");
//print("multiplyResult : \(multiplyResult)");
//print("divideResult : \(divideResult)");
//print("remainderResult : \(remainderResult)");



// Level. 4
class Calculator {
    
    public let num1: Int;
    public let num2: Int;
    
    init(_ num1: Int, _ num2: Int) {
        self.num1 = num1;
        self.num2 = num2;
    }
    
    func calculation(_ op: String) -> Double {
        var abop: AbstractOperation;
        
        switch op {
        case "AddOperation":
            abop = AddOperation();
        case "SubstractOperation":
            abop = SubstractOperation();
        case "MultiplyOperation":
            abop = MultiplyOperation();
        case "DivideOperation":
            abop = DivideOperation();
        case "RemainOperation":
            abop = RemainderOperation();
        default:
            return 0;
        }
        return abop.operation(num1, num2);
    }
    
}

class AbstractOperation {
    
    func operation(_ num1: Int, _ num2: Int) -> Double {
        return 0;
    }
}

class AddOperation : AbstractOperation{

    override func operation(_ num1: Int, _ num2: Int) -> Double {
        let add: Double? = Double(num1) + Double(num2);
        if let result = add {
            return result;
        }
    }
}

class SubstractOperation : AbstractOperation{

    override func operation(_ num1: Int, _ num2: Int) -> Double {
        let substract: Double? = Double(num1) - Double(num2);
        if let result = substract {
            return result;
        }
    }
}

class MultiplyOperation : AbstractOperation{

    override func operation(_ num1: Int, _ num2: Int) -> Double {
        let multiply: Double? = Double(num1) * Double(num2);
        if let result = multiply {
            return result;
        }
    }
}

class DivideOperation : AbstractOperation{

    override func operation(_ num1: Int, _ num2: Int) -> Double {
        let divided: Double? = Double(num1) / Double(num2);
        if let result = divided {
            return result;
        }
    }
}

class RemainderOperation : AbstractOperation{

    override func operation(_ num1: Int, _ num2: Int) -> Double {
        let remainder: Double? = Double(num1).truncatingRemainder(dividingBy: Double(num2));
        if let result = remainder {
            return result;
        }
    }
}

let calculator = Calculator(80, 4); // 프로퍼티 초기화

let addResult = calculator.calculation("AddOperation"); // 덧셈 연산;
let subtractResult = calculator.calculation("SubstractOperation"); // 뺄셈 연산
let multiplyResult = calculator.calculation("MultiplyOperation"); // 곱셈 연산
let divideResult = calculator.calculation("DivideOperation"); // 나눗셈 연산
let remainderResult = calculator.calculation("RemainderOperation"); // 나머지 연산

print("addResult : \(addResult)");
print("subtractResult : \(subtractResult)");
print("multiplyResult : \(multiplyResult)");
print("divideResult : \(divideResult)");
print("remainderResult : \(remainderResult)");
