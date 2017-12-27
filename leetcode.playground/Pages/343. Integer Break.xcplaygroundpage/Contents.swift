//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     
     343. Integer Break
     
     Given a positive integer n, break it into the sum of at least two positive integers and maximize the product of those integers. Return the maximum product you can get.
     
     For example, given n = 2, return 1 (2 = 1 + 1); given n = 10, return 36 (10 = 3 + 3 + 4).
     
     Note: You may assume that n is not less than 2 and not larger than 58.
     
     */
    
    func integerBreak(_ n: Int) -> Int {

        if n < 3 {
            return 1
        }
        
        if n < 6 {
            return 2 * (n - 2)
        }
        
        if n % 3 == 0 {
            
            return Int(pow(3, Double(n / 3)))
        }
        
        if n % 3 == 1 {
            
            let power = Int(n / 3) - 1
            
            return Int(pow(3, Double(power)) * 4)
        }
        
        if n % 3 == 2 {
            
            let power = Int(n / 3)
            
            return Int(pow(3, Double(power)) * 2)
        }
        
        return 0
    }
}

let solution = Solution()
solution.integerBreak(8)
