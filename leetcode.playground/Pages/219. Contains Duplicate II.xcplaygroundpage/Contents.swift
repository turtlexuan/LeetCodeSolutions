//: [Previous](@previous)

import Foundation

/*
 
 219. Contains Duplicate II
 
 Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k.
 
 */

class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        
        var table: [Int: Int] = [:]
        
        for (index, num) in nums.enumerated() {
            
            switch table[num] == nil {
            case true:

                table[num] = index
            case false:
                
                table[num]
                index
                
                switch index - table[num]! > k {
                case true:
                    table[num] = index
                    continue
                case false:
                    return true
                }
            }
        }
        
        return false
    }
}

let solution = Solution()
solution.containsNearbyDuplicate([1, 2, 1], 1)

