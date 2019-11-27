//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

func mergeStrings(a: String, b: String) -> String {
    var newString = ""
    var index = 0
    var longString = a, shortString = b
    if a.count < b.count { longString = b; shortString = a }
    
    for character in longString {
        newString += String(character)
        if index < shortString.count {
            let subIndex = shortString.index(shortString.startIndex, offsetBy: index)
            for shortStringCharacter in shortString[subIndex...]{
                newString += String(shortStringCharacter)
                index += 1
                break
            }
        }
        
    }
    return newString
}

mergeStrings(a: "wissa", b: "Michael")
