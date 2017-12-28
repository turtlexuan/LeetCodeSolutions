//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     
     7. Reverse Integer
     
     Given a 32-bit signed integer, reverse digits of an integer.
     
     Example 1:
     
        Input: 123
        Output:  321
     
     Example 2:
     
        Input: -123
        Output: -321
     
     Example 3:
     
        Input: 120
        Output: 21
     
     Note:
        Assume we are dealing with an environment which could only hold integers within the 32-bit signed integer range. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
     
     */
    
    func reverse(_ x: Int) -> Int {
        
        var lessThanZero = false
        var newX = x
        
        if x < 0 {
            
            newX = x * -1
            lessThanZero = true
        }
        
        let reversedString = String(String(newX).reversed())
        newX = Int(reversedString)!
        
        if lessThanZero {
            
            newX *= -1
        }
        
        if newX > Int(Int32.max) || newX < Int(Int32.min) {
            
            return 0
        }
        
        return newX
    }
}

let solution = Solution()
solution.reverse(1534236469)
