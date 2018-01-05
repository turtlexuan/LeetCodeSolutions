//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     
     263. Ugly Number
     
     Write a program to check whether a given number is an ugly number.
     
     Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.
     
     Note that 1 is typically treated as an ugly number.
     
     */
    
    func isUgly(_ num: Int) -> Bool {
        
        if num == 0 {
            return false
        }
        
        if num == 1 {
            return true
        }
        
        var newNum = num
        
        while newNum % 2 == 0 {
            
            newNum /= 2
        }
        
        while newNum % 3 == 0 {
            
            newNum /= 3
        }
        
        while newNum % 5 == 0 {
            
            newNum /= 5
        }
        
        if newNum != 1 {
            return false
        }
        
        return true
    }
}

let solution = Solution()
solution.isUgly(8)
