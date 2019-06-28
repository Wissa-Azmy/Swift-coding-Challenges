//: [Previous](@previous)
// return bool of the values being the same as the second one containes squared values of the first one.
import Foundation

var str = "Hello, playground"

//: [Next](@next)
let arr1 = [1, 2, 3], arr2 = [4, 1, 9], arr3 = [1, 9], arr4 = [1, 2, 1], arr5 = [4, 4, 1]

func isSameSquared(_ arr1: [Int], _ arr2: [Int]) -> Bool {
    // Edge cases
    if arr1.count != arr2.count {
        return false
    }
    
    // Setup
    let firstArray = arr1
    var secondArray = arr2
    
    // Algorithm
    for item in firstArray {
        if let index = secondArray.firstIndex(of: (item * item)) {
            secondArray.remove(at: index)
        } else {
            return false
        }
    }
    
    return secondArray.isEmpty
}

isSameSquared(arr4, arr5)


/****************** Using The Frequency Counter Pattern ******************/
func isSameSquaredFrequently(_ arr1: [Int], _ arr2: [Int]) -> Bool {
    // Edge cases
    if arr1.count != arr2.count {
        return false
    }
    
    // Setup
    var firstArrayFrequency = [Int: Int]()
    var secondArrayFrequency = [Int: Int]()
    
    // Logic
    for item in arr1 {
        if firstArrayFrequency[item] != nil {
            firstArrayFrequency[item] = firstArrayFrequency[item]! + 1
        } else {
            firstArrayFrequency[item] = 1
        }
    }
    
    for item in arr2 {
        if secondArrayFrequency[item] != nil {
            secondArrayFrequency[item] = secondArrayFrequency[item]! + 1
        } else {
            secondArrayFrequency[item] = 1
        }
    }
    
    print(firstArrayFrequency)
    print(secondArrayFrequency)
    
    return true
}

isSameSquaredFrequently(arr4, arr5)


let st = String(repeating: "W", count: 10)
let maxCharStr = "Wissa"

// Print Characters ASCII Code
print(st.unicodeScalars.map({$0.value}))
print(maxCharStr.max())
