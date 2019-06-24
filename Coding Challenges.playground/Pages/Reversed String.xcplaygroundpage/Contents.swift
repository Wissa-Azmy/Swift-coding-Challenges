//: Write a function that takes a string and returns it in a reversed form

import Foundation
//import UIKit

//: [Next](@next)

var str = "Hello, playground"



/********REVERSED STRING********/
func reverse(_ str: String) -> String {
    var reversed = ""

    for char in str {
        reversed = "\(char)\(reversed)"
    }
    
    return reversed
}

print(reverse(str))


/********REVERSED STRING USIING REDUCE********/
func reduceToReverse(_ str: String) -> String {
    return str.reduce("") { "\($1)\($0)" }
}

print(reduceToReverse(str))







