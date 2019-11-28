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

// ttempting to access an index outside of a string’s range will trigger a runtime error.
greeting[greeting.endIndex] // Error
greeting.index(after: greeting.endIndex) // Error


// Inserting and Removing

var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
// welcome now equals "hello!"

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
// welcome now equals "hello there!"

func removeSpecialCharsFrom(text: String) -> String {
    let okayChars = Set("abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLKMNOPQRSTUVWXYZ1234567890+-=().!_")
    return text.filter {okayChars.contains($0) }
}
