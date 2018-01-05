//: [Previous](@previous)

import Foundation
import Darwin

class Solution {
    
    /*
     
     264. Ugly Number II
     
     Write a program to find the n-th ugly number.
     
     Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 1, 2, 3, 4, 5, 6, 8, 9, 10, 12 is the sequence of the first 10 ugly numbers.
     
     Note that 1 is typically treated as an ugly number, and n does not exceed 1690.
     
     */
    
    func nthUglyNumber(_ n: Int) -> Int {
        guard n > 1 else {
            return 1
        }
        
        var uglys = [Int](repeating: 1, count: n)
        
        var index2 = 0
        var index3 = 0
        var index5 = 0
        
        for i in 1..<n {
            let minValue = min(uglys[index2] * 2, uglys[index3] * 3, uglys[index5] * 5)
            
            if minValue == uglys[index2] * 2 {
                index2 += 1
            }
            if minValue == uglys[index3] * 3 {
                index3 += 1
            }
            if minValue == uglys[index5] * 5{
                index5 += 1
            }
            
            uglys[i] = minValue
        }
        
        return uglys[n - 1]
    }
}

let solution = Solution()
solution.nthUglyNumber(7)

