//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

func spiralMatrix(_ numberOfArrays: Int) -> [[Int]] {
    // Edge cases
    guard numberOfArrays > 1 else {
        return [[0]]
    }
    
    // Prepare data
    var matrixArrays = [[Int]]()
    var counter = 1
    var startRow = 0, endRow = numberOfArrays - 1, startColumn = 0, endColumn = numberOfArrays - 1
    
    // Initialize result matrix array
    for arrayIndex in 0..<numberOfArrays {
        matrixArrays.append([Int]())
        for _ in 0..<numberOfArrays {
            matrixArrays[arrayIndex].append(0)
        }
    }
    
    while startRow <= endRow, startColumn <= endColumn {
        
        // Fill in the start row of the spiral matrix
        for column in startColumn...endColumn {
            matrixArrays[startRow][column] = counter
            counter += 1
        }
        startRow += 1
        
        // Fill in the end column of the spiratl matrix
        if startRow <= endRow {
            for row in startRow...endRow {
                matrixArrays[row][endColumn] = counter
                counter += 1
            }
            endColumn -= 1
        }
        
        // Fill in the end row of the matrix
        for column in stride(from: endColumn, through: startColumn, by: -1) {
            matrixArrays[endRow][column] = counter
            counter += 1
        }
        endRow -= 1
        
        // Fill in the start column
        for row in stride(from: endRow, through: startRow, by: -1) {
            matrixArrays[row][startColumn] = counter
            counter += 1
        }
        startColumn += 1
    }
    
    return matrixArrays
}


let spiralMatrixArrays = spiralMatrix(5)

for array in spiralMatrixArrays {
    print(array)
}
