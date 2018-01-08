//: [Previous](@previous)

import Foundation

/*
 
 326. Power of Three
 
 Given an integer, write a function to determine if it is a power of three.
 
 Follow up:
    Could you do it without using any loop / recursion?
 
 */

class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        
        if n <= 0 || n % 2 == 0 {
            return false
        }
        
        let logResult = logf(Float(n)) / log(3.0)
        
        return modf(logResult).1 == 0
    }
}

let solution = Solution()
solution.isPowerOfThree(1594322)

let a = log(12.0) / log(3.0)

modf(a).1

Double(243)
Decimal(integerLiteral: 243)

log(243.0) / log(3.0)

pow(3, 13)
