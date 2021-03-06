//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a

// Attempting to access an index outside of a string’s range will trigger a runtime error.
// greeting[greeting.endIndex] // Error
// greeting.index(after: greeting.endIndex) // Error


// Inserting and Removing
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
// welcome now equals "hello!"

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
// welcome now equals "hello there!"


//****** Get alphanumeric characters only from a string ******//
func removeSpecialCharsFrom(text: String) -> String {
    let okayChars = Set("abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLKMNOPQRSTUVWXYZ 1234567890 +-=().!_")
    return text.filter { okayChars.contains($0) }
}

let testStr = "12Wissa@.Azmy!"
let alphaString = testStr.components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased()
print(alphaString)


let elements = ["one", "two", "three"]
let joinedStrings = elements.joined(separator: ",")
print(joinedStrings)

let phoneNumber = "+20 128 5579 610"
let compactNumber = phoneNumber.components(separatedBy: " ").joined()
print(compactNumber)

let letters = ["G", "D", "S", "A","N", "B"]
let sortedLetters = letters.sorted { $0 < $1 }
print(sortedLetters)
