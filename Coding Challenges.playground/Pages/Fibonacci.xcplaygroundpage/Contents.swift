//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
func fib(_ n: Int) -> Int {
    var result = [0, 1]
    
    for number in 2...n {
        let a = result[number - 2]
        let b = result[number - 1]
        
        result.append(a + b)
    }
    print(result)
    return result[n]
}

fib(20)

// MARK: - Recursive Fib
func recursiveFib(_ n: Int) -> Int {
    if (n < 2) {
        return n
    }
    
    return recursiveFib(n - 1) + recursiveFib(n - 2)
}

print(recursiveFib(20))


// MARK: - Memoized Fib
var memoizedFibDic = [Int: Int]()

func memoizedFib(_ n: Int) -> Int {
    // Check if the result already exists
    if let result = memoizedFibDic[n] {
        return result
    }
    
    // Get the fib result of n
    let result = n < 2 ? n : memoizedFib(n - 1) + memoizedFib(n - 2)
    
    // Add it to the cache dictionary
    memoizedFibDic[n] = result
    
    // Return the result of fib(n)
    return result
}

print(memoizedFib(3))
