//: [Previous](@previous)

import Foundation

/*
 
 409. Longest Palindrome
 
 Given a string which consists of lowercase or uppercase letters, find the length of the longest palindromes that can be built with those letters.
 
 This is case sensitive, for example "Aa" is not considered a palindrome here.
 
 Note:
    Assume the length of given string will not exceed 1,010.
 
 Example:
 
    Input:
        "abccccdd"
 
    Output:
        7
 
 Explanation:
    One longest palindrome that can be built is "dccaccd", whose length is 7.
 
 */

class Solution {
    func longestPalindrome(_ s: String) -> Int {
        
        var table: [Character: Int] = [:]
        var result = 0
        
        for str in s {
            
            let item = str
            
            switch table[item] != nil {
            case true:
                
                table[item] = nil
                result += 2
                
            case false:
                table[item] = 1
            }
        }
        
        return table.count > 0 ? result + 1 : result
    }
}

let solution = Solution()
solution.longestPalindrome("abccccdd")
