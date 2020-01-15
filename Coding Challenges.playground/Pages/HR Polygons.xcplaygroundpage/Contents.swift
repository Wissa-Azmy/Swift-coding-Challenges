//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
// Parallelogram "36 30 36 30"
// Rhombus       "15 15 15 15"
// Other Polygons"46 96 90 90 100"
// NOT Polygons  "100"

let metrics = [
    "36 30 36 30",
    "30 36 30 30",
    "15 15 15 15",
    "46 96 90 90 100",
    "100 200 100 200",
    "-100 -100 -100",
    "100"
]

// Output map rhombi, parallelograms, other polygons, not polygons
// Sample Output "1 2 2 2"
func polygonCount(from lines: [String]) -> String {
    var polygonsDic = [String: Int]()
    var polygonsCount = 0
    var polygons = ""
    
    for line in lines {
        let measures = line.components(separatedBy: " ")
        let min = measures.min()!
        // Handle non-polygons data
        guard Int(min) ?? 0 > 0, measures.count > 3 else {
            if let otherData = polygonsDic["otherData"] {
                polygonsDic["otherData"] = otherData + 1
            } else {
                polygonsDic["otherData"] = 1
            }
            polygonsCount += 1
            continue
        }
        
        if measures.count == 4 {
            if measures.first == measures[2], measures[1] == measures.last, measures.first != measures.last {
                if let parallelograms = polygonsDic["parallelograms"] {
                    polygonsDic["parallelograms"] = parallelograms + 1
                } else {
                    polygonsDic["parallelograms"] = 1
                }
                polygonsCount += 1
            }
            // Check if it is rhombi
            if measures.first == measures.last, measures[1] == measures[2], measures.first == measures[1] {
                if let rhombi = polygonsDic["rhombi"] {
                   polygonsDic["rhombi"] = rhombi + 1
                } else {
                   polygonsDic["rhombi"] = 1
                }
                polygonsCount += 1
            }
        }
    }
    // get the number of other polygons shapes which is everything other than the above types
    let otherPolygons = lines.count - polygonsCount
    polygons = "\(polygonsDic["rhombi"] ?? 0) \(polygonsDic["parallelograms"] ?? 0) \(otherPolygons) \(polygonsDic["otherData"] ?? 0)"
    
    return polygons
}


polygonCount(from: metrics) // 1 2 2 2
