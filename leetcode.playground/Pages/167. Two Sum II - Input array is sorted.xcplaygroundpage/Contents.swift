//: [Previous](@previous)

import Foundation

/*
 
 167. Two Sum II - Input array is sorted
 
 Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a specific target number.
 
 The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.
 
 You may assume that each input would have exactly one solution and you may not use the same element twice.
 
    Input: numbers={2, 7, 11, 15}, target=9
    Output: index1=1, index2=2
 
 */

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        
        for (index, num) in numbers.enumerated() {
            
            second: for i in (index + 1)..<numbers.count {
                
                if num + numbers[i] > target {
                    break second
                }
                
                if num + numbers[i] == target {
                    
                    return [index + 1, i + 1]
                }
            }
        }
        
        return []
    }
}

let solution = Solution()
solution.twoSum([2, 7, 11, 13], 20)
