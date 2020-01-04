//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

class Queue {
    var data: [Int]
    
    init() {
        self.data = [Int]()
    }
    
    func enque(_ value: Int) {
        data.append(value)
    }
    
    func deque() -> Int? {
        return data.removeFirst()
    }
    
    func peek() -> Int? {
        if let first = data.first {
            return first
        }
        return nil
    }
}

var queueObject = Queue()

queueObject.enque(1)
queueObject.enque(3)
queueObject.enque(7)
print(queueObject.data)

//print(queueObject.peek() ?? "_")
//print(queueObject.deque())
//print(queueObject.data)


func weave(firstSource: Queue, secondSource: Queue) -> Queue {
    // Edge cases
    if firstSource.peek() == nil {
        return secondSource
    }
    if secondSource.peek() == nil {
        return firstSource
    }
    
    let wovenQueue = Queue()
    
    while firstSource.peek() != nil || secondSource.peek() != nil {
        if let firstItem = firstSource.deque() {
            wovenQueue.enque(firstItem)
        }
        if let secondItem = secondSource.deque() {
            wovenQueue.enque(secondItem)
        }
    }
    
    
    return wovenQueue
}

let secondQueueObject = Queue()
secondQueueObject.enque(5)

print(weave(firstSource: queueObject, secondSource: secondQueueObject).data)
