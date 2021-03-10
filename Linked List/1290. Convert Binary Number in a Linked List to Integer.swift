//
//  1290. Convert Binary Number in a Linked List to Integer
//  
//
//  Created by Nia Fan on 2021/03/10.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func getDecimalValue(_ head: ListNode?) -> Int {
    
    var result = 0
    var current = head
    
    while current != nil {
        result = (result * 2) + (current?.val ?? 0)
        current = current?.next
    }
    
    return result
}

getDecimalValue(ListNode(1, ListNode(0, ListNode(1))))
getDecimalValue(ListNode(1, ListNode(0, ListNode(0, ListNode(1, ListNode(0, ListNode(0, ListNode(1, ListNode(1, ListNode(1, ListNode(0, ListNode(0, ListNode(0, ListNode(0, ListNode(0, ListNode(0))))))))))))))))

