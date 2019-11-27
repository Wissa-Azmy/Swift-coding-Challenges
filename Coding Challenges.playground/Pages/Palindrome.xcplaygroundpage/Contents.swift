// Write a function that takes a string and returns true when the strina is a palindrome or false otherwise.
// A palindrome is a word that doesn't changed when reversed or read backwards.

import Foundation



//: [Next](@next) 
let testString = "abba"
let testString2 = "anba"

func isPalindrome(_ str: String) -> Bool {
    guard str.count > 1 else { return true }
    
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
// Another way is to cut the string from the middle and check if the first part equal the second one


/*
 * Complete the 'palindromeChecker' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. STRING s
 *  2. INTEGER_ARRAY startIndex
 *  3. INTEGER_ARRAY endIndex
 *  4. INTEGER_ARRAY subs
 */

func palindromeChecker(s: String, startIndex: [Int], endIndex: [Int], subs: [Int]) -> String {
    // Write your code here
    var result = ""
    for index in 0..<startIndex.count {
        
        let start = s.index(s.startIndex, offsetBy: startIndex[index])
        let end = s.index(s.startIndex, offsetBy: endIndex[index])
        let range = start...end
        let subString = s[range]
        var stringToCheck = String(subString)
        
        if isPalindrome(stringToCheck) { result = result + "1"; continue}

        if subs[index] > 0 {
            for _ in 0..<subs[index] {
                stringToCheck = substitute(stringToCheck)
                if isPalindrome(stringToCheck) { result = result + "1"; break }
            }
        } else {
            result = result + "0"
        }
    }
    
    return result
}


func substitute(_ str: String) -> String {
    let str2 = Array(str)
    var newString = ""
    guard str.count > 2 else {
        return "\(str2[0])\(str2[0])"
    }
    if str.count == 3 {
        return "\(str2[0])\(str2[1])\(str2[0])"
    }

    var startIndex = 0
    var endIndex = 1
    let midIndex = str2.count / 2
    
    
    while startIndex < midIndex {
        if str2[startIndex] != str2[str2.count - endIndex] {
            if str2[startIndex] == str2[midIndex] {
                for index in 0..<str2.count {
                    if index == str2.count - endIndex {
                        newString += String(str2[startIndex])
                    } else {
                        newString += String(str2[index])
                    }
                }
            } else {
                for index in 0..<str2.count {
                    if index == startIndex {
                        newString += String(str2[str2.count - endIndex])
                    } else {
                        newString += String(str2[index])
                    }
                }
            }
            
            break
        }
        
        startIndex += 1
        endIndex += 1
    }
    
    return newString
}


palindromeChecker(s: "bcba", startIndex: [1,2,1], endIndex: [3,3,1], subs: [2,0,0])
