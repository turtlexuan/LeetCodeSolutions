//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     
     453. Minimum Moves to Equal Array Elements
     
     Given a non-empty integer array of size n, find the minimum number of moves required to make all array elements equal, where a move is incrementing n - 1 elements by 1.
     
     Example:
     
     Input:
     [1,2,3]
     
     Output:
     3
     
     Explanation:
     Only three moves are needed (remember each move increments two elements):
     
     [1,2,3]  =>  [2,3,3]  =>  [3,4,3]  =>  [4,4,4]
     */
    
    func minMoves(_ nums: [Int]) -> Int {
        
        if nums.count <= 1 {
            return 0
        }
        
        var sortedNums = nums.sorted { $0 > $1 }
        let minNum = sortedNums[nums.count - 1]
        var result = 0
        
        sortedNums.remove(at: nums.count - 1)
        
        for num in sortedNums {
            
            result += num - minNum
        }
        
        return result
    }
}
