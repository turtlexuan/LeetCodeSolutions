//: [Previous](@previous)

import Foundation

/*
 
 342. Power of Four
 
 Given an integer (signed 32 bits), write a function to check whether it is a power of 4.
 
 Example:
    Given num = 16, return true. Given num = 5, return false.
 
 Follow up: Could you solve it without loops/recursion?
 
 */

class Solution {
    func isPowerOfFour(_ num: Int) -> Bool {
        
        if num < 1 {
            return false
        }
        
        let logResult = log(Double(num)) / log(4.0)
        
        return modf(logResult).1 == 0
        
    }
}

let solution = Solution()
solution.isPowerOfFour(17592186044416)
