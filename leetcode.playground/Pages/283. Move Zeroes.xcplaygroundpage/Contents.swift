//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     
     283. Move Zeroes
     
     Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
     
     For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].
     
     Note:
        You must do this in-place without making a copy of the array.
        Minimize the total number of operations.
     
     */
    
    func moveZeroes(_ nums: inout [Int]) {
        
        let originCount = nums.count
        
        nums = nums.filter { $0 != 0 }
        
        nums += Array(repeating: 0, count: originCount - nums.count)
    }
}

let solution = Solution()
var arr = [0,1,0,3,12]
solution.moveZeroes(&arr)


