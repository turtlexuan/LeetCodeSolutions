//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     406. Queue Reconstruction by Height
     
     Suppose you have a random list of people standing in a queue. Each person is described by a pair of integers (h, k), where h is the height of the person and k is the number of people in front of this person who have a height greater than or equal to h. Write an algorithm to reconstruct the queue.
     
     Note:
     The number of people is less than 1,100.
     
     Example:
     Input:
     [[7,0], [4,4], [7,1], [5,0], [6,1], [5,2]]
     
     Output:
     [[5,0], [7,0], [5,2], [6,1], [4,4], [7,1]]
     */
    
    func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
        
        if people.count <= 1 {
            
            return people
        }
        
        var result: [[Int]] = []
        
        let sortedPeaple = people.sorted {
            
            if $0[0] != $1[0] {
                
                return $0[0] > $1[0]
            } else {
                
                return $0[1] < $1[1]
            }
        }
        
        for (index, human) in sortedPeaple.enumerated() {
            
            if index == 0 {
                result.append(human)
                continue
            }
            
            result.insert(human, at: human[1])
        }
        
        return result
    }
}
