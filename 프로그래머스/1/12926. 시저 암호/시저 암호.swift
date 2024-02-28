func solution(_ s:String, _ n:Int) -> String {
    
    guard s.count <= 8000 && n >= 1 && n <= 25 else {
        return "";
    }
    
    var arrChar: Array<Character> = Array(s);
    var result: String = "";
    
    let largeZ: UInt8 = Character("Z").asciiValue!;
    let smallZ: UInt8 = Character("z").asciiValue!;
    
    for char in arrChar {
        if ("a"..."z").contains(char) {
            let number = char.asciiValue! + UInt8(n)
            
            if number > smallZ {
                result += String(UnicodeScalar(96 + UInt8(number - smallZ)));
            } else {
                result += String(UnicodeScalar(char.asciiValue! + UInt8(n)));
            }
        } else if char == " "{
            result += " ";
        } else {
            let number = char.asciiValue! + UInt8(n)
            
            if number > largeZ {
                result += String(UnicodeScalar(64 + UInt8(number - largeZ)));
            } else {
                result += String(UnicodeScalar(char.asciiValue! + UInt8(n)));
            }
        }
    }

    return result;
}