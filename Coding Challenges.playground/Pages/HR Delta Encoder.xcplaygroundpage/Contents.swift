//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
/*
 In this problem you are extending NSArray to provide encoder for delta encoded arrays of integers.
 
 DELTA ENCODING:
 Delta encoding is a simple lossless way to obfuscate arrays of integers.
 
 RULES:
 - the first element of the array is copied as is (without any transformation)
 - each coming element is transformed to the difference from it's predecessor
 - when the difference to the predecessor is outside the range -127...127 a prefix of -128 ia added
 
 ENCODING EXAMPLES:
 input: [1000, 0, 100]
 output: [1000, -128, -1000, 100]
 
 Input: [25626, 25757, 24367, 24267, 16, 100, 2, 7277]
 Output: [25626, -128, 131, -128, -1390, -100, -128, -24251, 84, -98, -128, 7275]
 */

let firstSample = [1000, 0, 100]
let secondSample = [25626, 25757, 24367, 24267, 16, 100, 2, 7277]

func deltaEncode(array: [Int]) -> [Int] {
    var encodedArray = [Int]()
    
    if let firstNumber = array.first {
        encodedArray.append(firstNumber)
    } else {
        return encodedArray
    }
    
    for index in 1..<array.count {
        let itemsDifference = array[index] - array[index - 1]
        if abs(itemsDifference) > 127 {
            encodedArray.append(-128)
            encodedArray.append(itemsDifference)
        } else {
            encodedArray.append(itemsDifference)
        }
    }
    
    return encodedArray
}


deltaEncode(array: firstSample) // [1000, -128, -1000, 100]
deltaEncode(array: secondSample) // [25626, -128, 131, -128, -1390, -100, -128, -24251, 84, -98, -128, 7275]
