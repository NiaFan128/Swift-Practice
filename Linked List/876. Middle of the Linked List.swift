//
//  876. Middle of the Linked List
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

func middleNode(_ head: ListNode?) -> ListNode? {
    
    //    Runtime: 0 ms
    //    Memory Usage: 13.9 MB
    //    100%
    
    var totalCount = 0
    var current = head
    
    while current != nil {
        totalCount += 1
        current = current?.next
    }
    
    let middle = (totalCount / 2 != 0) ? (totalCount / 2) + 1 : (totalCount / 2)
    print(middle)
    
    current = head
    totalCount = 1

    while current != nil, totalCount < middle {
        totalCount += 1
        current = current?.next
    }
    
    return current
}

middleNode(ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))))
middleNode(ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, ListNode(6)))))))
middleNode(ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, ListNode(6, ListNode(7))))))))

