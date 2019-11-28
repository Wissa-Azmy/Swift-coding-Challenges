//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
var charCounts = [Character: Int]()

for char in str {
    if let charItem = charCounts[char] {
        charCounts[char] = charCounts[char]! + 1
    } else {
        charCounts[char] = 1
    }
}

print(charCounts)
