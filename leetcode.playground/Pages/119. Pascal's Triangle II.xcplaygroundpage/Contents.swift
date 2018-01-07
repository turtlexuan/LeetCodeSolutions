//: [Previous](@previous)

import Foundation

/*
 
 119. Pascal's Triangle II
 
 Given an index k, return the kth row of the Pascal's triangle.
 
 For example, given k = 3,
    Return [1,3,3,1].
 
 Note:
    Could you optimize your algorithm to use only O(k) extra space?
 
 */

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        
        let rows = generate(rowIndex + 1)
        
        return rows.last!
    }
    
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
solution.getRow(3)
