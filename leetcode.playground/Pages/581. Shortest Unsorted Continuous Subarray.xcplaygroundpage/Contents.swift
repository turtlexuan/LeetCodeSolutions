//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     
     581. Shortest Unsorted Continuous Subarray
     
     Given an integer array, you need to find one continuous subarray that if you only sort this subarray in ascending order, then the whole array will be sorted in ascending order, too.
     
     You need to find the shortest such subarray and output its length.
     
     Example 1:
     Input: [2, 6, 4, 8, 10, 9, 15]
     Output: 5
     Explanation: You need to sort [6, 4, 8, 10, 9] in ascending order to make the whole array sorted in ascending order.
     Note:
     Then length of the input array is in range [1, 10,000].
     The input array may contain duplicates, so ascending order here means <=.
     
     */
    
    func findUnsortedSubarray(_ nums: [Int]) -> Int {
        
        let sortedNums = nums.sorted { $0 < $1 }
        var unsortedIndex: [Int] = []
        
        for (index, item) in nums.enumerated() {
            
            if item != sortedNums[index] {
                
                unsortedIndex.append(index)
            }
        }
        
        if unsortedIndex.count == 0 {
            return 0
        } else {
            return unsortedIndex[unsortedIndex.count - 1] - unsortedIndex[0] + 1
        }
    }
}
