
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

enum Operation {
    case Add;
    case Substract;
    case Multiply;
    case Divide;
    case Remain;
}

class Calculator {
    
    public let firstInt: Int;
    public let secondInt: Int;
    public let operater: Operation;
    
    init(_ firstInt: Int, _ secondInt: Int, _ operator: Operation) {
        self.firstInt = firstInt;
        self.secondInt = secondInt;
        self.operater = `operator`;
    }
    
    func calculation() -> Double {
        var operation: AbstractOperation;
        
        switch operater {
        case .Add:
            operation = AddOperation();
        case .Substract:
            operation = SubstractOperation();
        case .Multiply:
            operation = MultiplyOperation();
        case .Divide:
            operation = DivideOperation();
        case .Remain:
            operation = RemainderOperation();
        }
        
        return operation.operation(firstInt, secondInt);
    }
    
}

// 추상클래스
class AbstractOperation {
    
    func operation(_ firstInt: Int, _ secondInt: Int) -> Double {
        return 0;
    }
}

class AddOperation : AbstractOperation{

    override func operation(_ firstInt: Int, _ secondInt: Int) -> Double {
        
        let add: Double? = Double(firstInt) + Double(secondInt);
        
        if let result = add {
            return result;
        }
    }
}

class SubstractOperation : AbstractOperation{

    override func operation(_ firstInt: Int, _ secondInt: Int) -> Double {
        
        let substract: Double? = Double(firstInt) - Double(secondInt);
        
        if let result = substract {
            return result;
        }
    }
}

class MultiplyOperation : AbstractOperation{

    override func operation(_ firstInt: Int, _ secondInt: Int) -> Double {
        
        let multiply: Double? = Double(firstInt) * Double(secondInt);
        
        if let result = multiply {
            return result;
        }
    }
}

class DivideOperation : AbstractOperation{

    override func operation(_ firstInt: Int, _ secondInt: Int) -> Double {
        
        let divided: Double? = Double(firstInt) / Double(secondInt);
        
        if let result = divided {
            return result;
        }
    }
}

class RemainderOperation : AbstractOperation{

    override func operation(_ firstInt: Int, _ secondInt: Int) -> Double {
        
        let remainder: Double? = Double(firstInt).truncatingRemainder(dividingBy: Double(secondInt));
        
        if let result = remainder {
            return result;
        }
    }
}

let addResult = Calculator(80, 4, .Add).calculation(); // 덧셈 연산
let subtractResult = Calculator(54, 4, .Substract).calculation(); // 뺄셈 연산
let multiplyResult = Calculator(356, 4, .Multiply).calculation(); // 곱셈 연산
let divideResult = Calculator(897, 4, .Divide).calculation(); // 나눗셈 연산
let remainderResult = Calculator(35, 4, .Remain).calculation(); // 나머지 연산

print("addResult : \(addResult)");
print("subtractResult : \(subtractResult)");
print("multiplyResult : \(multiplyResult)");
print("divideResult : \(divideResult)");
print("remainderResult : \(remainderResult)");
