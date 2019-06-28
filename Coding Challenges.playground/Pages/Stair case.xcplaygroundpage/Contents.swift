//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

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
