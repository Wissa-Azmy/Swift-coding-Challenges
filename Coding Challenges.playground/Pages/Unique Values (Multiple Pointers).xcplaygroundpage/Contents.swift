//: [Previous](@previous)

import Foundation

var str = "Count Unique Values"

/*
 Implement a function called countUniqueValues, which accepts a sorted array, and counts the unique values in the array.
 There can be negative numbers in the array, but it will always be sorted.
 */

//: [Next](@next)
var arr1 = [1, 1, 1, 1, 1, 2]
var arr2 = [1, 2, 3, 4, 4, 4, 7, 7, 12, 13]
var arr3 = [Int]()
var arr4 = [-2, -1, -1, 0, 1]


func countUnique(values: [Int]) -> [Int] {
    guard values.count > 0 else { return [Int]() }
    
    var uniqueValues = [values.first!]
    
    var index = 0
    for (key, value) in values.enumerated() {
        if value != values[index] {
            uniqueValues.append(value)
            index = key
        }
    }
    
    return uniqueValues
}

print(countUnique(values: arr1)) // 2
print(countUnique(values: arr2)) // [1, 2, 3, 4, 7, 12, 13]
print(countUnique(values: arr3)) // []
print(countUnique(values: arr4)) // [-2, -1, 0, 1]
