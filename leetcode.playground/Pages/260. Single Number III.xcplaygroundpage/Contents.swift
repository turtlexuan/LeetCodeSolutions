//: Playground - noun: a place where people can play

import Foundation

class Solution {
    
    /*
     260. Single Number III
     
     Given an array of numbers nums, in which exactly two elements appear only once and all the other elements appear exactly twice. Find the two elements that appear only once.
     
     For example:
     
     Given nums = [1, 2, 1, 3, 2, 5], return [3, 5].
     
     Note:
     The order of the result is not important. So in the above example, [5, 3] is also correct.
     Your algorithm should run in linear runtime complexity. Could you implement it using only constant space complexity?
     */
    
    func singleNumber(_ nums: [Int]) -> [Int] {
        
        let sortedNums = nums.sorted { $0 < $1 }
        var results: [Int] = []
        
        for (index, item) in sortedNums.enumerated() {
            
            if index == 0 {
                
                if item != sortedNums[index + 1] {
                    
                    results.append(item)
                }
            } else if index == sortedNums.count - 1 {
                
                if item != sortedNums[index - 1] {
                    
                    results.append(item)
                }
                
            } else if item != sortedNums[index - 1] && item != sortedNums[index + 1] {
                
                results.append(item)
                
            }
        }
        
        return results
    }
}
