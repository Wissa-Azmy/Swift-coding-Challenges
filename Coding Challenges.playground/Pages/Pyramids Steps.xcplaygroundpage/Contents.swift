//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

// n = 3

func stepPyramid(with steps: Int) {
    if steps < 1 {
        print("a zero-leveled pyramed is an insult to the pharoes")
        return
    }
    print()
    // if steps = 3
    let columns = steps + steps - 1 // 5
    var leadingEmptyColumns = steps - 1  // 2
    var trailingEmptyColumns = steps + 1 // 4
    
    for _ in 1...steps { // 3
        var levelString = ""
    
        for column in 1...columns {
            if column > leadingEmptyColumns && column < trailingEmptyColumns {
                levelString = "\(levelString)#"
            } else {
                levelString = "\(levelString) "
            }
        }
        
        print(levelString)
        leadingEmptyColumns -= 1
        trailingEmptyColumns += 1
    }
}

// Test cases
stepPyramid(with: 0)
stepPyramid(with: 3)
stepPyramid(with: 5)
stepPyramid(with: 8)





func buildPyramid(_ number: Int, _ currentLevels: Int = 0, levelsString: String = "") {
    guard currentLevels != number else { return }
    
    let columns = number * 2 - 1 // 5
    let leadingEmptySpaces = number - (currentLevels + 1) //4
    let trailingEmptySpaces = number + (currentLevels + 1) //6
    var buildingBlock = ""
    
    if levelsString.count == columns {
        print(levelsString)
        buildPyramid(number, currentLevels + 1)
        return
    }
    
    if levelsString.count + 1 > leadingEmptySpaces && levelsString.count + 1 < trailingEmptySpaces {
        buildingBlock = levelsString + "#"
    } else {
        buildingBlock = levelsString + " "
    }
    
    buildPyramid(number, currentLevels, levelsString: buildingBlock)
}


buildPyramid(4)


