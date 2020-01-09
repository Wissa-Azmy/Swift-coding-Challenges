//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

func sortDates(dates: [String]) -> [String] {
    var convertedArray: [Date] = []

    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd MM, yyyy"// yyyy-MM-dd"
        
    for stringDate in dates {
        if let date = dateFormatter.date(from: stringDate) {
            convertedArray.append(date)
        }
    }

    let sortedDates = convertedArray.sorted(by: { $0.compare($1) == .orderedAscending })
    let stringSortedDates = sortedDates.map { dateFormatter.string(from: $0) }
    
    return stringSortedDates
}
