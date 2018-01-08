//: [Previous](@previous)

import Foundation

/*
 
 234. Palindrome Linked List
 
 Given a singly linked list, determine if it is a palindrome.
 
 Follow up:
    Could you do it in O(n) time and O(1) space?
 
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
    func isPalindrome(_ head: ListNode?) -> Bool {
        
        guard var nowNode = head else { return true }
        
        if nowNode.next == nil {
            return true
        }
        
        var values: [String] = []
        
        while nowNode.next != nil {
            
            values.append(String(nowNode.val))
            nowNode = nowNode.next!
        }
        
        values.append(String(nowNode.val))
        
        for i in 0..<Int(values.count / 2) {
            if values[i] != values[values.count - 1 - i] {
                return false
            }
        }
        
        return true
    }
}

let solution = Solution()
let node = ListNode(1)
let node2 = ListNode(2)
node.next = node2
solution.isPalindrome(node)
