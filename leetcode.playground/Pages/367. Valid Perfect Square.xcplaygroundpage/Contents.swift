//: [Previous](@previous)

import Foundation

/*
 
 367. Valid Perfect Square
 
 Given a positive integer num, write a function which returns True if num is a perfect square else False.
 
 Note: Do not use any built-in library function such as sqrt.
 
 Example 1:
    Input: 16
    Returns: True
 
 Example 2:
    Input: 14
    Returns: False
 
 */

class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        
        var root = 1
        
        while root * root <= num {
            
            if root * root == num {
                return true
            }
            
            root += 1
        }
        
        return false
    }
}

let solution = Solution()
solution.isPerfectSquare(143)
