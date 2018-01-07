//: [Previous](@previous)

import Foundation

/*
 
 268. Missing Number
 
 Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.
 
 Example 1
    Input: [3,0,1]
    Output: 2
 
 Example 2
    Input: [9,6,4,2,3,5,7,0,1]
    Output: 8
 
 Note:
    Your algorithm should run in linear runtime complexity. Could you implement it using only constant extra space complexity?
 
 */

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        
        if nums.count == 1 {
            
            if nums[0] == 0 {
                return 1
            } else {
                return 0
            }
        }
        
        let newNums = nums.sorted(by: <)
        
        if newNums[0] != 0 {
            return 0
        }

        for i in 0..<newNums.count {
            
            if newNums.indices.contains(i + 1) {
                
                if newNums[i + 1] != newNums[i] + 1 {
                    return newNums[i] + 1
                }
            } else {
                return newNums[i] + 1
            }
        }
        
        return 0
    }
}
