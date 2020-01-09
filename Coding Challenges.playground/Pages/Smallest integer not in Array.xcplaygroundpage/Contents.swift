//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

var a = [-5, 4, 1, 3, 2, 5, 9]

public func solution(_ A : inout [Int]) -> Int {
    // Edge cases
    if A.count == 0 { return 1 }
    
    let sum = A.reduce(0, +)
    
    if sum <= 0 { return 1 }
    
    let sortedArray = A.sorted()
    var currentNumber = 0
    let lastNum = sortedArray.last
    
    for (key, number) in sortedArray.enumerated() {
        currentNumber = number
        guard currentNumber > 0 else { continue }
        
        if key + 1 < sortedArray.count {
            let nextNumber = sortedArray[key + 1]
            if nextNumber - currentNumber > 1 {
                return currentNumber + 1
            }
        }
    }
    
    return lastNum! + 1
}


print(solution(&a))
