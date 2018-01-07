//: [Previous](@previous)

import Foundation

/*
 
 287. Find the Duplicate Number
 
 Given an array nums containing n + 1 integers where each integer is between 1 and n (inclusive), prove that at least one duplicate number must exist. Assume that there is only one duplicate number, find the duplicate one.
 
 Note:
    You must not modify the array (assume the array is read only).
    You must use only constant, O(1) extra space.
    Your runtime complexity should be less than O(n2).
    There is only one duplicate number in the array, but it could be repeated more than once.
 
 */

class Solution {
    
    // 3971 ms
    func findDuplicate(_ nums: [Int]) -> Int {
        
        for i in 0..<nums.count {
            for j in (i + 1)..<nums.count {
                
                nums[i]
                nums[j]
                
                if nums[i] == nums[j] {
                    return nums[i]
                }
            }
        }
        
        return 0
    }
}

let solution = Solution()
solution.findDuplicate([1, 2, 2])
