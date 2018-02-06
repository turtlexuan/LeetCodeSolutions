//: [Previous](@previous)

import Foundation

/*
 
 94. Binary Tree Inorder Traversal
 
 Given a binary tree, return the inorder traversal of its nodes' values.
 
 For example:
    Given binary tree [1,null,2,3],
    1
     \
      2
     /
    3
    return [1,3,2].
 
 Note: Recursive solution is trivial, could you do it iteratively?
 
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
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        
        guard let root = root else { return [] }
        
        var result: [Int] = []
        
        result += inorderTraversal(root.left)
        result.append(root.val)
        result += inorderTraversal(root.right)
        
        return result
    }
}
