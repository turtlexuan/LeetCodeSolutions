//: [Previous](@previous)

import Foundation

/*
 
 205. Isomorphic Strings
 
 Given two strings s and t, determine if they are isomorphic.
 
 Two strings are isomorphic if the characters in s can be replaced to get t.
 
 All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.
 
 For example,
    Given "egg", "add", return true.
 
    Given "foo", "bar", return false.
 
    Given "paper", "title", return true.
 
 Note:
    You may assume both s and t have the same length.
 
 */

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        
        var table: [String.Element: String.Element] = [:]
        let sArray = Array(s)
        let tArray = Array(t)
        var result = ""
        
        for i in 0..<tArray.count {
            
            if table[tArray[i]] != nil {
                result += String(describing: table[tArray[i]]!)
            } else {
                
                if table.filter({ $0.value == sArray[i] }).count != 0 {
                    return false
                }
                
                result += String(describing: sArray[i])
                table[tArray[i]] = sArray[i]
            }
        }
        
        return s == result
    }
}

let solution = Solution()
solution.isIsomorphic("aa", "ab")
