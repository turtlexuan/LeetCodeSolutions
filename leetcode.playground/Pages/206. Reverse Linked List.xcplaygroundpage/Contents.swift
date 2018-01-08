//: [Previous](@previous)

import Foundation

/*
 
 206. Reverse Linked List
 
 Reverse a singly linked list.
 
 Hint:
    A linked list can be reversed either iteratively or recursively. Could you implement both?
 
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        guard let head = head else { return nil }
        
        if head.next == nil {
            return head
        }
        
        head.val
        
        var nowNode = head
        var newHead = head.next
        nowNode.next = nil
        
        while newHead != nil {
            
            let tempNext = newHead
            newHead = newHead?.next
            
            tempNext?.next = nowNode
            nowNode = tempNext!
        }
        
        return nowNode
    }
}

let solution = Solution()
let node = ListNode(1)
let node2 = ListNode(2)
node.next = node2
solution.reverseList(node)
