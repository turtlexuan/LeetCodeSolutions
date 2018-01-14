//: [Previous](@previous)

import Foundation

/*
 
 242. Valid Anagram
 
 Given two strings s and t, write a function to determine if t is an anagram of s.
 
 For example,
    s = "anagram", t = "nagaram", return true.
    s = "rat", t = "car", return false.
 
 Note:
    You may assume the string contains only lowercase alphabets.
 
 */

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        
        let sSorted = Array(s).sorted(by: <)
        let tSorted = Array(t).sorted(by: <)
        
        return sSorted == tSorted
    }
}

let solution = Solution()
solution.isAnagram("anagram", "nagaram")
