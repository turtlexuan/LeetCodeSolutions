//: [Previous](@previous)

import Foundation

/*
 
 118. Pascal's Triangle
 
 Given numRows, generate the first numRows of Pascal's triangle.
 
 For example, given numRows = 5,
 Return
 
    [
        [1],
        [1,1],
        [1,2,1],
        [1,3,3,1],
        [1,4,6,4,1]
    ]
 
 */

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        
        var result = Array(repeating: [1], count: numRows)
        
        for i in 0..<numRows {
            
            if i == 0 {
                continue
            }
            
            for j in 0..<i {
                
                if result[i - 1].indices.contains(j + 1) {
                    
                    result[i].append(result[i - 1][j] + result[i - 1][j + 1])
                } else {
                    
                    result[i].append(1)
                }
            }
        }
        
        return result
    }
}

let solution = Solution()
solution.generate(5)
