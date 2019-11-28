//: [Previous](@previous)

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
    var stringA = Array(firstString.lowercased().filter({allowedChars.contains($0)}))
    let stringB = Array(secondString.lowercased().filter({allowedChars.contains($0)}))
    
    guard stringA.count == stringB.count else { return false }
    
    while !stringA.isEmpty {
        if stringB.contains(stringA.first!) {
            stringA.removeFirst()
        } else {
            return false
        }
    }
    
    if stringA.isEmpty {
        return true
    }
    
    return false
}

print(areAnagrams(stringA, stringB))
print(areAnagrams(stringC, stringD))
print(areAnagrams(stringE, stringF))
print(areAnagrams(stringG, stringH))
