//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     
     628. Maximum Product of Three Numbers
     
     Given an integer array, find three numbers whose product is maximum and output the maximum product.
     
     Example 1:
        Input: [1,2,3]
        Output: 6
     
     Example 2:
        Input: [1,2,3,4]
        Output: 24
     
     Note:
        The length of the given array will be in range [3,104] and all elements are in the range [-1000, 1000].
        Multiplication of any three numbers in the input won't exceed the range of 32-bit signed integer.
     
     */
    
    func maximumProduct(_ nums: [Int]) -> Int {
        
        let newNums = nums.sorted(by: > )
        
        return max(newNums[0] * newNums[1] * newNums[2], newNums[newNums.count - 1] * newNums[newNums.count - 2] * newNums[0])
    }
}
