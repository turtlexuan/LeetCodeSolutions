//: [Previous](@previous)

import Foundation

/*
 
 203. Remove Linked List Elements
 
 Remove all elements from a linked list of integers that have value val.
 
 Example
    Given: 1 --> 2 --> 6 --> 3 --> 4 --> 5 --> 6, val = 6
    Return: 1 --> 2 --> 3 --> 4 --> 5
 
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
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        
        guard var head = head else { return nil }
        var nowNode = head
        
        while nowNode.next != nil {
            
            if head.val == val {
                if head.next == nil {
                    return nil
                }
                
                head = head.next!
            }
            
            if let next = nowNode.next {
                
                if next.val == val {
                    if next.next != nil {
                        nowNode.next = next.next
                        continue
                    } else {
                        nowNode.next = nil
                        continue
                    }
                }
                nowNode = nowNode.next!
            }
        }

        return head.val == val ? nil : head
    }
}

let solution = Solution()
let node = ListNode(1)
let node2 = ListNode(1)
node.next = node2
solution.removeElements(node, 1)
