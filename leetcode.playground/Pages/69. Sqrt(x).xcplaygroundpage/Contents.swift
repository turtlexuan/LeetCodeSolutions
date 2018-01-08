//: [Previous](@previous)

import Foundation

/*
 
 69. Sqrt(x)
 
 Implement int sqrt(int x).
 
 Compute and return the square root of x.
 
 x is guaranteed to be a non-negative integer.
 
 Example 1:
    Input: 4
    Output: 2
 
 Example 2:
    Input: 8
    Output: 2
 Explanation: The square root of 8 is 2.82842..., and since we want to return an integer, the decimal part will be truncated.
 
 */

class Solution {
    func mySqrt(_ x: Int) -> Int {
        
        if x == 0 {
            return 0
        }
        
        var root = 1
        
        while root * root <= x {
            
            if root * root == x {
                return root
            }
            
            root += 1
        }
        
        return root - 1
    }
}

let solution = Solution()
solution.mySqrt(9)
