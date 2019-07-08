//: [Previous](@previous)

import Foundation

/*
 Consider a staircase of size : n = 4
 #
 ##
 ###
 ####
 Observe that its base and height are both equal to , and the image is drawn using # symbols and spaces. The last line is not preceded by any spaces.
 Write a program that prints a staircase of size
*/

func createSteps(_ n: Int) {
    guard n > 0 else { return }
    var stairs = ""
    
    for row in 0..<n {
        while stairs.count < n {
            stairs = stairs.count <= row ? stairs + "#" : stairs + " "
        }
        print(stairs)
        stairs = ""
    }
}

createSteps(5)


func createStepsRecursively(_ n: Int, _ row: Int = 0, _ stairs: String = "") {

    guard n != row else { return }
    var newStairs = stairs
    
    if stairs.count == n {
        print(stairs)
        let newRow = row + 1
        return createStepsRecursively(n, newRow)
    }
    
    newStairs = stairs.count <= row ? stairs + "#" : stairs + " "
    
    createStepsRecursively(n, row, newStairs)
}


createStepsRecursively(5)
