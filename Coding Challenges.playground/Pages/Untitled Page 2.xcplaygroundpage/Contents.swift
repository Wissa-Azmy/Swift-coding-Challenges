//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
/*
 You are again the owner of a coworking space like WeWork and your office building is rectangular. You team just created many wall partitions to create mini offices for startups. Your office campus is represented by a 2D array of 1s (floor spaces) and 0s (walls). Each point on this array is a one foot by one foot square. Before renting to tenants, you want to reserve an office for yourself. You wish to fit the largest possible rectangular table in your office, and you will select the office that fits this table. The table sides will always be parallel to the boundaries of the office building. What is the area of the biggest table that can fit in your office?

 Functions
 biggestTable() has one parameter:
 grid: a 2D grid/array of 1s and 0s

 Input Format
 For some of our templates, we have handled parsing for you. If we do not provide you a parsing function, you will need to parse the input directly. In this problem, our input format is as follows:
 The first line is the number of rows in the 2D array
 The second line is the number of columns in the 2D array
 The rest of the input contains the data to be processed
 Here is an example of the raw input:
 4
 5
 11110
 11010
 11000
 00000

 Expected Output
 Return the area of the biggest right-angled parallelogram made of 1s in the grid. Assume the grid is surrounded by 0s (walls).

 Constraints
 Assume that the bounds of the array are the following:
 The total amount of elements in the array: width x height <= 10^6

 Example
 Example biggestTable() Input
 grid:
     [[1, 0, 1, 1, 1],
      [1, 0, 1, 1, 1],
      [1, 1, 1, 1, 1],
      [1, 0, 0, 1, 0]]
 Example Output
 9
 Solution
 The top right of the grid consists of a rectangle with nine 1s in it, the biggest possible space for our table.

 Input 1:

 4
 5
 10111
 10111
 11111
 10010
 Input 2:

 4
 5
 10100
 10111
 11111
 10010

 */


// Swift 3.0.2
class Solution
{
   static func biggestTable(matrix: [[Int]]) -> Int {
       //Put your code here.
        var spacesMap = [Int: Int]()

        print(matrix)
        for array in matrix {
            for index in 0 ..< array.count {
                if array[index] == 1 {
                    if let value = spacesMap[index] {
                        spacesMap[index] = value + 1
                    } else {
                        spacesMap[index] = 1
                    }
                }
            }
        }

        var maximum = 0
        for map in spacesMap {
            if map.value > maximum {
                maximum = map.value
            }
        }
        print("Maximum =", maximum)

        let sortedSpacesMap = spacesMap.sorted (by:{ $0.0 < $1.0 })
        print("Sorted Spaces Map:", sortedSpacesMap)
        var consequentSpacesCount = 0
        var consequentSpacesValue = 0
        var consequentSpacesMap = [Int: Int]()
        for index in 0..<sortedSpacesMap.count {
            if index > 0 {
                if sortedSpacesMap[index - 1].value == sortedSpacesMap[index].value {
                    consequentSpacesValue = sortedSpacesMap[index].value
                    if consequentSpacesCount == 0 {
                        consequentSpacesCount += 2
                    }
                } else {
                    consequentSpacesMap[consequentSpacesCount] = consequentSpacesValue
                    consequentSpacesCount = 0
                    consequentSpacesValue = 0
                }
            }
        }
        print("Consequent Spaces:", consequentSpacesMap)

        var maxSubsequentSpacesColumns = 0
        var maximumSpacesRows = 0
        for map in consequentSpacesMap {
            if map.value > maximum {
                maxSubsequentSpacesColumns = map.key
                maximumSpacesRows = map.value
            }
        }
        print("Maximum =", maximum)

       return maxSubsequentSpacesColumns * maximumSpacesRows;
   }
}

let matrix = [[1,0,1],[0,1,0]]
let result =  Solution.biggestTable(matrix: matrix)
print(result)
