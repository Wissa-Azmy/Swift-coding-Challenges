//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
func sumZero(arr: [Int]) -> [Int]? {
    for firstIndex in 0..<arr.count {
        for secondIndex in firstIndex + 1..<arr.count {
            if arr[firstIndex] + arr[secondIndex] == 0 {
                return [arr[firstIndex], arr[secondIndex]]
            }
        }
    }
    
    return nil
}

sumZero(arr: [-3, -2, -1, 0, 1, 2, 3])
sumZero(arr: [ 2, 0, 1, 3])
sumZero(arr: [1, 2, 3])


// MARK:- USing Multiple Pointers
func sumIsZero(array: [Int]) -> [Int]? {
    var leftPointer = 0
    var rightPointer = array.count - 1
    
    while leftPointer < rightPointer {
        let sum = array[leftPointer] + array[rightPointer]
        if sum == 0 {
            return [array[leftPointer] + array[rightPointer]]
        } else if sum > 0 {
            rightPointer += 1
        } else {
            leftPointer += 1
        }  
    }
    
    return nil
}

