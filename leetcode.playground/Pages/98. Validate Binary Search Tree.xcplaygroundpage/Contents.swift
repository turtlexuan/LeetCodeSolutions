//: [Previous](@previous)

import Foundation

/*
 
 98. Validate Binary Search Tree
 
 Given a binary tree, determine if it is a valid binary search tree (BST).
 
 Assume a BST is defined as follows:
 
    The left subtree of a node contains only nodes with keys less than the node's key.
    The right subtree of a node contains only nodes with keys greater than the node's key.
    Both the left and right subtrees must also be binary search trees.
 
 Example 1:
    2
   / \
  1   3
 Binary tree [2,1,3], return true.
 
 Example 2:
    1
   / \
  2   3
 Binary tree [1,2,3], return false.
 
 */

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        
        let inorderTraversalArray = inorderTraversal(root)
        
        guard inorderTraversalArray.count > 1 else { return true }
        
        for i in 0..<inorderTraversalArray.count - 1 {
            
            if inorderTraversalArray[i] > inorderTraversalArray[i + 1] {
                return false
            }
        }
        
        return true
    }
    
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        
        guard let root = root else { return [] }
        
        var result: [Int] = []
        
        result += inorderTraversal(root.left)
        result.append(root.val)
        result += inorderTraversal(root.right)
        
        return result
    }
}
