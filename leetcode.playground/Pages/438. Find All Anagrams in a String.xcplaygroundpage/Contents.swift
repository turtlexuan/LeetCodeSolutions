//: [Previous](@previous)

import Foundation

/*
 
 438. Find All Anagrams in a String
 
 Given a string s and a non-empty string p, find all the start indices of p's anagrams in s.
 
 Strings consists of lowercase English letters only and the length of both strings s and p will not be larger than 20,100.
 
 The order of output does not matter.
 
 Example 1:
 
    Input:
        s: "cbaebabacd" p: "abc"
 
    Output:
        [0, 6]
 
 Explanation:
    The substring with start index = 0 is "cba", which is an anagram of "abc".
    The substring with start index = 6 is "bac", which is an anagram of "abc".

 Example 2:
 
    Input:
        s: "abab" p: "ab"
 
    Output:
        [0, 1, 2]
 
 Explanation:
    The substring with start index = 0 is "ab", which is an anagram of "ab".
    The substring with start index = 1 is "ba", which is an anagram of "ab".
    The substring with start index = 2 is "ab", which is an anagram of "ab".
 
 */

class Solution {
    
    // TLE
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        
        guard s.count >= p.count else {
            return []
        }
        
        let pSorted = Array(p).sorted(by: <)
        var result: [Int] = []
        
        for i in 0...s.count - p.count {
            
            let indexStartOfText = s.index(s.startIndex, offsetBy: i)
            let indexEndOfText = String.Index(encodedOffset: p.count + i)
            let subString = s[indexStartOfText..<indexEndOfText]
            let sSorted = Array(String(subString)).sorted(by: <)
            
            if sSorted == pSorted {
                result.append(i)
            }
            
        }
        
        return result
    }
}

let solution = Solution()
solution.findAnagrams("cbaebabacd", "abc")