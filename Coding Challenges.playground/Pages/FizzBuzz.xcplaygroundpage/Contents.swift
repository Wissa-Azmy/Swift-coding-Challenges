//: [Previous](@previous)
// Write a functionn that takes a range from 1 to 100 and returns FIZZ for 3 and its duplicates
// BUZZ for 5 and its duplicates and FIZZBUZZ if the number is duplicate of both 3 & 5

import Foundation

var str = "Hello, playground"

//: [Next](@next)

func printFizzBuzz() {
    for number in 1 ... 100 {
        if isFizzBuzz(number) {
            print("FizzBuzz")
        }else if isFizz(number) {
            print("Fizz")
        } else if isBuzz(number) {
            print("Buzz")
        } else {
            print(number)
        }
    }
}

func isFizz(_ number: Int) -> Bool {
    // Fizz is a dublicate of 3 number
    if number % 3 == 0 {
        return true
    }
    return false
}

func isBuzz(_ number: Int) -> Bool {
    // Buzz is a duplicate of 5 number
    if number % 5 == 0 {
        return true
    }
    return false
}

func isFizzBuzz(_ number: Int) -> Bool {
    // FizzBuzz is a duplicate of both 3 & 5 number
    if number % 3 == 0 && number % 5 == 0 {
        return true
    }
    return false
}

printFizzBuzz()
