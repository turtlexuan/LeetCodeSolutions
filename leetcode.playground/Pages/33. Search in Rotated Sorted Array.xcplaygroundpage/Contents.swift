//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     33. Search in Rotated Sorted Array
     
     Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.
     
     (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
     
     You are given a target value to search. If found in the array return its index, otherwise return -1.
     
     You may assume no duplicate exists in the array.
     */
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        
        let index = nums.index { (item) -> Bool in
            
            item == target
        }
        
        if let index = index {
            return Int(index)
        } else {
            return -1
        }
    }
}
