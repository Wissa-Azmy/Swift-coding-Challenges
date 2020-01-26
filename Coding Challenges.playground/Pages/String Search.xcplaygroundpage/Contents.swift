//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

func naiveSearch(long: String, short: String) -> String {
    var count = 0
    let shortString = Array(short)
    let longString = Array(long)
    
    for index in 0..<long.count {
        for j in 0..<short.count {
            guard shortString[j] == longString[index+j] else { break }
            if j == short.count - 1 {
                count += 1
            }
        }
    }
    
    return "'\(short)' is found \(count) times in '\(long)'"
}

naiveSearch(long: "lorie loled", short: "lo")
