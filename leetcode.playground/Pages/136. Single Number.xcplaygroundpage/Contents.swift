//: [Previous](@previous)

import Foundation

/*
 
 136. Single Number
 
 Given an array of integers, every element appears twice except for one. Find that single one.
 
 Note:
    Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 
 */

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        
        var result = 0
        
        for num in nums {
            
            result ^= num
        }
        
        return result
    }
}

let solution = Solution()
solution.singleNumber([2, 2, 1])

/*
 
 XOR 符合交換率，相同的兩個數字通過 XOR 後會等於 0
 
 XOR 交換律 :
 101 ^ 101 ^ 010 =
 000 ^ 010 =
 010
 
 101 ^ 010 ^ 101 =
 111 ^ 101 =
 010
 
 */
