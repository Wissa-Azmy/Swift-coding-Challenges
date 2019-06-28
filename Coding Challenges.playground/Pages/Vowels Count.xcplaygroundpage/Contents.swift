//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
// Vowels Checker

func countVowels(inString text: String) -> Int {
    guard text.count > 0 else { return 0}
    
    let vowelsPool: Set<Character> = Set(["a", "e", "i", "o", "u"])
    let vowelsInText = text.lowercased().filter(){vowelsPool.contains($0)}
    print(vowelsInText)
    
    return vowelsInText.count
}

print(countVowels(inString: "I love you N@VA"))


// func removeSpecialChars(fromString text: String) -> String {
//     let okayChars = Set("abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLKMNOPQRSTUVWXYZ1234567890+-=().!_")
//     return text.filter {okayChars.contains($0) }
// }

// print(removeSpecialChars(fromString: "I love you N@VA"))
