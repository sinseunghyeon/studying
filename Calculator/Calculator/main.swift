
import Foundation

// Lv. 1
class Calculator {
    
    private let num1: Int;
    private let num2: Int;
    
    init(num1: Int, num2: Int) {
        self.num1 = num1;
        self.num2 = num2;
    }
    
    func add() -> Int {
        return num1 + num2;
    }
    
    func substract() -> Int {
        return num1 - num2;
    }
    
    func multiply() -> Int {
        return num1 * num2;
    }
    
    func divide() -> Double {
        return Double(num1) / Double(num2);
    }
}

class AddOperation : Calculator {

    override func add() -> Int {
        let result = super.add();
        return result;
    }
}

class SubstractOperation : Calculator {
    
    override func substract() -> Int {
        let result = super.substract();
        return result;
    }
}

class MultiplyOperation : Calculator {
    
    override func multiply() -> Int {
        let result = super.multiply();
        return result;
    }
}

class DivideOperation : Calculator {
    
    override func divide() -> Double {
        let divided: Double? = super.divide();
        if let result = divided {
            return result;
        }
    }
}

let calculator = Calculator(num1: 11, num2: 356);
let addResult = AddOperation(num1: 23, num2: 495); // 덧셈 연산
let subtractResult = SubstractOperation(num1: 457, num2: 21); // 뺄셈 연산
let multiplyResult = MultiplyOperation(num1: 473, num2: 92); // 곱셈 연산
let divideResult = DivideOperation(num1: 84, num2: 5); // 나눗셈 연산

print("addResult : \(addResult.add())")
print("subtractResult : \(subtractResult.substract())")
print("multiplyResult : \(multiplyResult.multiply())")
print("divideResult : \(divideResult.divide())")



