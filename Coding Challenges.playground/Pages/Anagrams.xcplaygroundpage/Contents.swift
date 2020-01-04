//: Given two strings, write a function that returns a true if the second string is anagram to the first.
// an Anagram is a word formed by rearranging another word like 'cinema' and 'iceman'

import Foundation

var str = "Hello, playground"

//: [Next](@next)
let stringA = "rail safety"
let stringB = "fairy tales"
let stringC = "RAIL! SAFETY!"
let stringD = "fairy tales"
let stringE = "Hi there"
let stringF = "Bye there"
let stringG = "rail safoty"
let stringH = "fairy tales"

func areAnagrams(_ firstString: String, _ secondString: String) -> Bool {
    let allowedChars = Set<Character>("abcdefghijklmnopqrstuvwxyz")
    var stringA = Array(firstString.lowercased().filter {allowedChars.contains($0)})
    let stringB = Array(secondString.lowercased().filter {allowedChars.contains($0)})
    
    guard !stringA.isEmpty else { return false }
    guard stringA.count == stringB.count else { return false }
    
    while !stringA.isEmpty {
        if stringB.contains(stringA.first!) {
            stringA.removeFirst()
        } else {
            return false
        }
    }
    
    return true
}

print(areAnagrams("", ""))              // False
print(areAnagrams(stringA, stringB))    // True
print(areAnagrams(stringC, stringD))    // True
print(areAnagrams(stringE, stringF))    // False
print(areAnagrams(stringG, stringH))    // False



//****** Get alphanumeric characters only from a string ******//
let testStr = "12Wissa@.Azmy!"
let alphaString = testStr.components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased()
print(alphaString)
