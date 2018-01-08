//: [Previous](@previous)

import Foundation

/*
 
 290. Word Pattern
 
 Given a pattern and a string str, find if str follows the same pattern.
 
 Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in str.
 
 Examples:
    pattern = "abba", str = "dog cat cat dog" should return true.
    pattern = "abba", str = "dog cat cat fish" should return false.
    pattern = "aaaa", str = "dog cat cat dog" should return false.
    pattern = "abba", str = "dog dog dog dog" should return false.
 
 Notes:
    You may assume pattern contains only lowercase letters, and str contains lowercase letters separated by a single space.
 
 */

class Solution {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        
        var table: [String: String.Element] = [:]
        let sArray = Array(pattern)
        let pArray = str.split(separator: " ").map{ String($0) }
        var result = ""
        
        if sArray.count != pArray.count {
            return false
        }
        
        for i in 0..<pArray.count {
            
            if table[pArray[i]] != nil {
                result += String(describing: table[pArray[i]]!)
            } else {
                
                if table.filter({ $0.value == sArray[i] }).count != 0 {
                    return false
                }
                
                result += String(describing: sArray[i])
                table[pArray[i]] = sArray[i]
            }
        }
        
        return pattern == result
    }
}

let solution = Solution()
solution.wordPattern("abba", "dog cat cat dog")
