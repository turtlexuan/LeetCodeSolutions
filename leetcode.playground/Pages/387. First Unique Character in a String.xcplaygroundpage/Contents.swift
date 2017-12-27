//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     
     387. First Unique Character in a String
     
     Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.
     
     Examples:
     
        s = "leetcode"
        return 0.
     
        s = "loveleetcode",
        return 2.
     
     Note: You may assume the string contain only lowercase letters.
     
     */
    
    func firstUniqChar(_ s: String) -> Int {
        
        var table: [Character: Int] = [:]
        
        for (index, item) in s.enumerated() {
            
            if table[item] == nil {
                
                table[item] = index
            } else {
                
                table[item] = -1
            }
        }
        
        let values = Array(table.values).sorted(by: < ).filter({ $0 != -1 })
        
        if values.count != 0 {
            return values[0]
        } else {
            return -1
        }
    }
}

let solution = Solution()
let str = "asdfghj"
solution.firstUniqChar(str)
