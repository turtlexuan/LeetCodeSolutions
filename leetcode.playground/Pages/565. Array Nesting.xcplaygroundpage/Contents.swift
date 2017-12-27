//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     
     565. Array Nesting
     
     A zero-indexed array A of length N contains all integers from 0 to N-1. Find and return the longest length of set S, where S[i] = {A[i], A[A[i]], A[A[A[i]]], ... } subjected to the rule below.
     
     Suppose the first element in S starts with the selection of element A[i] of index = i, the next element in S should be A[A[i]], and then A[A[A[i]]]… By that analogy, we stop adding right before a duplicate element occurs in S.
     
     Example 1:
        Input: A = [5,4,0,3,1,6,2]
        Output: 6
     Explanation:
        A[0] = 5, A[1] = 4, A[2] = 0, A[3] = 3, A[4] = 1, A[5] = 6, A[6] = 2.
     
     One of the longest S[K]:
        S[0] = {A[0], A[5], A[6], A[2]} = {5, 6, 2, 0}
     
     Note:
        N is an integer within the range [1, 20,000].
        The elements of A are all distinct.
        Each element of A is an integer within the range [0, N-1].
     
     */
    
    func arrayNesting(_ nums: [Int]) -> Int {
        
        var result = 0
        var boolArray = Array(repeating: false, count: nums.count)
        
        for i in 0..<nums.count {
            
            let firstValue = nums[i]
            var nextValue = nums[nums[i]]
            var count = 1
            
            if boolArray[nums[i]] != false {
                continue
            }
            
            while firstValue != nextValue {
                
                boolArray[nextValue] = true
                nextValue = nums[nextValue]
                count += 1
            }
            
            result = max(result, count)
        }
        
        return result
    }
    
}

let solution = Solution()
let A = [0,1,2]
solution.arrayNesting(A)
