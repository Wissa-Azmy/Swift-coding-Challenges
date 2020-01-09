//: [Previous](@previous)

import Foundation

var str = "Array to Linked List and return the count of the list"

var a = [1, 4, -1, 3, 2]

class Node {
    var value: Int
    var next: Node?
    
    init(value: Int, nextNode: Node? = nil) {
        self.value = value
        self.next = nextNode
    }
}

class LinkedList {
    var head: Node?
    
    init(head: Node?) {
        self.head = head
    }
    
    func append(_ node: Node) {
        guard head != nil else {
            head = node
            return
        }
        
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = node
    }
    
    func count() -> Int {
        var count = 0
        
        guard head != nil  else {
            return 0
        }
        
        count = 1
        var node = head
        while node?.value != -1 {
            count += 1
            node = node?.next
        }
        
        return count
    }

}

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    let headNode = Node(value: A[0], nextNode: nil)
    let list = LinkedList(head: headNode)
    
    for i in 1..<A.count {
        list.append(Node(value: A[A[i]]))
        if A[A[i]] == -1 {
            break
        }
    }
    
    return list.count()
}



print(solution(&a))
