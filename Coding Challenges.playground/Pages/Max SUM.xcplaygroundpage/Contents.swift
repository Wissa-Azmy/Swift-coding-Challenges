//: Write a function that returns the max subArray sum of length num

import Foundation

let intArray = [2, 6, 9, 2, 1, 8, 5, 6, 3]

func maxSum(ofSubArrayWithLengtn arrayLength: Int, inArray array: [Int]) -> Int? {
    guard array.count > arrayLength else { return nil }
    var maxSum = Int.min
    
    for index in 0 ..< array.count - arrayLength + 1 {
        var temp = 0
        for secondIndex in 0 ..< array.count {
            temp += array[index + secondIndex]
        }
        if (temp > maxSum) { maxSum = temp }
    }
    
    return maxSum
}

/********** Using Sliding Window Pattern **********/
func maxSubArraySum(ofLen num: Int, in array: [Int]) -> Int? {
    guard array.count > num else { return nil }
    
    var maxSum = 0
    var tempSum = 0
    
    for index in 0 ..< num {
        maxSum += array[index]
    }
    
    tempSum = maxSum
    for index in num ..< array.count {
        tempSum = tempSum - array[index - num] + array[index]
        maxSum = max(maxSum, tempSum)
    }
    
    return maxSum
}

maxSubArraySum(ofLen: 3, in: intArray)  // 19
