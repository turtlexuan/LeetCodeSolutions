//: [Previous](@previous)

import Foundation

/*
 
 633. Sum of Square Numbers
 
 Given a non-negative integer c, your task is to decide whether there're two integers a and b such that a2 + b2 = c.
 
 Example 1:
    Input: 5
    Output: True
    Explanation: 1 * 1 + 2 * 2 = 5
 
 Example 2:
    Input: 3
    Output: False
 
 */

class Solution {
    func judgeSquareSum(_ c: Int) -> Bool {
        
        let sqrtC = sqrt(Double(c))
        
        for i in 0...Int(sqrtC) {
            
            if c == i * i {
                return true
            }
            
            let d = c - i * i, sqrtD = Int(sqrt(Double(d)))
            
            if d == sqrtD * sqrtD {
                return true
            }
        }
        
        return false
    }
}

let solution = Solution()
solution.judgeSquareSum(5)
