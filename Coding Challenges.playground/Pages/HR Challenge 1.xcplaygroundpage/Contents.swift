//: [Previous](@previous)

import Foundation

//: [Next](@next)
let lines = ["pear", "amleth", "dormitory", "tinsel", "dirty room", "hamlet", "listen", "silent"]


func checkAnagrams(of lines: [String]) -> [String] {
    var linesAnagramsDic = [String: [String]]()
    var anagrams = [String]()
    
    for line in lines {
        let sortedLine = line.components(separatedBy: " ").joined().lowercased().sorted { $0 < $1 }
        let joinedLine = sortedLine.reduce(""){ "\($0)\($1)"}
        
        if var anagramsList = linesAnagramsDic[joinedLine] {
            anagramsList.append(line)
            linesAnagramsDic[joinedLine] = anagramsList
        } else {
            linesAnagramsDic[joinedLine] = [line]
        }
    }
    
    for (_, anagramsList) in linesAnagramsDic {
        let sortedAnagramsLine = anagramsList.sorted { $0 < $1 }.joined(separator: ",")
        anagrams.append(sortedAnagramsLine)
    }
    
    return anagrams.sorted { $0 < $1 }
}

print(checkAnagrams(of: lines))


func roundToTens(_ x : Double) -> Int {
    return 10 * Int((x / 10.0).rounded())
}

print(roundToTens(4.9))  // 0
print(roundToTens(15.1)) // 20


