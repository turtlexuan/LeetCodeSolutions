//: [Previous](@previous)

import Foundation

/*
 
 189. Rotate Array
 
 Rotate an array of n elements to the right by k steps.
 
 For example, with n = 7 and k = 3, the array [1,2,3,4,5,6,7] is rotated to [5,6,7,1,2,3,4].
 
 Note:
    Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
 
 Hint:
    Could you do it in-place with O(1) extra space?
    Related problem: Reverse Words in a String II
 
 */

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        if k == 0 {
            return
        }
        
        var n = k
        
        if k > nums.count {
            n = k % nums.count
        }
        
        for _ in 0..<n {
            nums.insert(nums.last!, at: 0)
            nums.removeLast()
        }
    }
}

let solution = Solution()

var arr = [1, 2, 3]

solution.rotate(&arr, 4)
