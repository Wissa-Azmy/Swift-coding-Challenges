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
print(areAnagrams(stringA, stringB))    // stringA = "rail safety" & stringB = "fairy tales" >> True
print(areAnagrams(stringC, stringD))    // stringC = "RAIL! SAFETY!" & stringD = "fairy tales" >> True
print(areAnagrams(stringE, stringF))    // stringE = "Hi there" & stringF = "Bye there" >> False
print(areAnagrams(stringG, stringH))    // stringG = "rail safoty" & stringH = "fairy tales" >> False



/****************** Using The Frequency Counter Pattern ******************/
func checkAnagrams(_ firstString: String, _ secondString: String) -> Bool {
    let allowedChars = Set<Character>("abcdefghijklmnopqrstuvwxyz")
    var stringA = Array(firstString.lowercased().filter {allowedChars.contains($0)})
    let stringB = Array(secondString.lowercased().filter {allowedChars.contains($0)})
    
    guard !stringA.isEmpty else { return false }
    guard stringA.count == stringB.count else { return false }
    
    var charMap = [Character: Int]()
    
    while !stringA.isEmpty {
        if let value = charMap[stringA.first!] {
            charMap[stringA.first!] = value + 1
        } else {
            charMap[stringA.first!] = 1
        }
        stringA.removeFirst()
    }
    
    for char in stringB {
        if let value = charMap[char] {
            charMap[char] = value - 1
        } else {
            return false
        }
    }
    
    return true
}

print("**** Using The Frequency Counter Pattern ****\n")
print(checkAnagrams("", ""))              // False
print(checkAnagrams(stringA, stringB))    // stringA = "rail safety" & stringB = "fairy tales" >> True
print(checkAnagrams(stringC, stringD))    // stringC = "RAIL! SAFETY!" & stringD = "fairy tales" >> True
print(checkAnagrams(stringE, stringF))    // stringE = "Hi there" & stringF = "Bye there" >> False
print(checkAnagrams(stringG, stringH))    // stringG = "rail safoty" & stringH = "fairy tales" >> False

