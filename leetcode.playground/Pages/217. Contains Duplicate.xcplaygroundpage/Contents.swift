//: [Previous](@previous)

import Foundation

/*
 
 217. Contains Duplicate
 
 Given an array of integers, find if the array contains any duplicates. Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
 
 */

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        var table: [Int: Int] = [:]
        
        for num in nums {
            
            switch table[num] == nil {
            case true:
                
                table[num] = 1
                
            case false:
                
                return true
            }
        }
        
        return false
    }
}

let solution = Solution()
solution.containsDuplicate([1, 2, 3, 4, 5, 1])
