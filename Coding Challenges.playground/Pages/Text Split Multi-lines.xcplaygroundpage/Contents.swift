//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
import Foundation

let shorterTestData = "The quick brown fox jumped over the lazy dog."

let shorterTestOutput = """
The quick
brown fox
jumped
over the
lazy dog.
"""


let testData = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et netus. Nisl suscipit adipiscing bibendum est ultricies integer quis. Enim blandit volutpat maecenas volutpat blandit aliquam. Imperdiet dui accumsan sit amet. Pharetra sit amet aliquam id diam maecenas. In egestas erat imperdiet sed euismod. Orci ac auctor augue mauris augue neque gravida in fermentum. Quam pellentesque nec nam aliquam sem. Tincidunt id aliquet risus feugiat in ante.
"""

// Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor\n
// incididunt ut labore et dolore magna aliqua. Pellentesque pulvinar pellentesque\n
// habitant morbi tristique senectus et netus. Nisl suscipit adipiscing bibendum\n
// est ultricies integer quis. Enim blandit volutpat maecenas volutpat blandit\n
// aliquam. Imperdiet dui accumsan sit amet. Pharetra sit amet aliquam id diam\n
// maecenas. In egestas erat imperdiet sed euismod. Orci ac auctor augue mauris\n
// augue neque gravida in fermentum. Quam pellentesque nec nam aliquam sem.\n
// Tincidunt id aliquet risus feugiat in ante.


func wrapText(_ text: String) -> String {
    // Edge cases
    guard text.count > 10 else {
        return text
    }
    
    let words = text.split(separator: " ")
    // ["The", "quick", "brown", ...]
    
    // print(words)
    var multiLineText = ""
    var newLine = ""
    
    for word in words {
        if newLine.count + 1 + word.count <= 10 { // 1 is for the space between the two words
            if newLine.isEmpty {
                newLine = "\(word)"
            } else {
                newLine = "\(newLine) \(word)"
            }
        } else {
            newLine = "\(newLine)\n"
            multiLineText = "\(multiLineText)\(newLine)"
            newLine = "\(word)" // Reset the newLine with current word and restart the loop
        }
        
    }
    
    if !newLine.isEmpty {
        multiLineText = "\(multiLineText)\(newLine)"
    }
    
    return multiLineText
}

print(wrapText(shorterTestData))
print("----------------------")
print("Result:")
print(wrapText(shorterTestData) == shorterTestOutput)
