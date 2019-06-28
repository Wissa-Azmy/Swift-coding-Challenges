// Write a function that takes a string and returns true when the strina is a palindrome or false otherwise.
// A palindrome is a word that doesn't changed when reversed or read backwards.

import Foundation

//var str = "Hello, playground"

//: [Next](@next)
let testString = "abba"
let testString2 = "anba"

func isPalindrome(_ str: String) -> Bool {
    let str2 = Array(str)
    var i = 0
    var j = 1
    var correctLettersCount = 0
    let midIndex = str2.count / 2
    
    while i < midIndex {
        if str2[i] == str2[str2.count - j] {
            correctLettersCount += 1
        }
        
        i += 1
        j += 1
    }
    
    return correctLettersCount == midIndex ? true : false
}

print(isPalindrome(testString))  // returns True
print(isPalindrome(testString2)) // returns False

// Another way is to reverse the string and then check if the reversed string equal the original string

