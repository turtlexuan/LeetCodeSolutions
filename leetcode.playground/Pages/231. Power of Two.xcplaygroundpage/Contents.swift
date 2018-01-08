//: [Previous](@previous)

import Foundation

/*
 
 231. Power of Two
 
 Given an integer, write a function to determine if it is a power of two.
 
 */

class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        
        if n < 1 {
            return false
        }
        
        let max = pow(Double(2), Double(62))
        
        return Int(max) % n == 0
    }
}

let solution = Solution()
solution.isPowerOfTwo(3)

