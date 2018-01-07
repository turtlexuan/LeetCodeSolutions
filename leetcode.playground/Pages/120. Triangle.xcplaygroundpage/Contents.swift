//: [Previous](@previous)

import Foundation

/*
 
 120. Triangle
 
 Given a triangle, find the minimum path sum from top to bottom. Each step you may move to adjacent numbers on the row below.
 
 For example, given the following triangle
    [
        [2],
       [3,4],
      [6,5,7],
     [4,1,8,3]
    ]
 The minimum path sum from top to bottom is 11 (i.e., 2 + 3 + 5 + 1 = 11).
 
 Note:
    Bonus point if you are able to do this using only O(n) extra space, where n is the total number of rows in the triangle.
 
 */

class Solution {
    
    // Wrong Answer.
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        
        var result: [(number: Int, index: Int)] = []
        var total = 0
        
        for i in 0..<triangle.count {
            
            if i == 0 {
                result.append((triangle[i][0], 0))
                continue
            }

            let index = result[i - 1].index
            let first = triangle[i][index]
            let second = triangle[i][index + 1]
            
            result.append(first < second ? (first, index) : (second, index + 1))
        }
        
        for num in result {
            total += num.number
        }
        
        return total
    }
}

class Solution2 {
    
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        
        
        return 0
    }
}

let solution = Solution()
solution.minimumTotal([
    [2],
    [3,4],
    [6,5,7],
    [4,1,8,3]
    ])
