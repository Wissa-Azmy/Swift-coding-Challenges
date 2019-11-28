//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

func reverse(number num: Int) -> Int {
    let sign = num < 0 ? "-" : ""
    let stringAbsoluteNumber = String(abs(num))
    var reversedNumberString = ""
    
    for digit in stringAbsoluteNumber {
        reversedNumberString = "\(digit)\(reversedNumberString)"
    }
    
    if sign == "-" {
        let fullReversedNumberString = sign + reversedNumberString
        return Int(fullReversedNumberString)!
    }
    
    return Int(reversedNumberString)!
}

let number = 123
let number2 = -123
let number3 = 1230
let number4 = -12300

print(reverse(number: number))
print(reverse(number: number2))
print(reverse(number: number3))
print(reverse(number: number4))
