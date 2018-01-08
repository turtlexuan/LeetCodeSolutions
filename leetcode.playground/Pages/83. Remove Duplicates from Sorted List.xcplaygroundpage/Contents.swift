//: [Previous](@previous)

import Foundation

/*
 
 83. Remove Duplicates from Sorted List
 
 Given a sorted linked list, delete all duplicates such that each element appear only once.
 
 For example,
    Given 1->1->2, return 1->2.
    Given 1->1->2->3->3, return 1->2->3.
 
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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        
        guard let head = head else { return nil }
        var nowNode = head
        
        while nowNode.next != nil {
            
            if let next = nowNode.next {
                
                if next.val == nowNode.val {
                    if next.next != nil {
                        nowNode.next = next.next
                        continue
                    } else {
                        nowNode.next = nil
                        return head
                    }
                }
                nowNode = nowNode.next!
            }
        }
        return head
    }
}
