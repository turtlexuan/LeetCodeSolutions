//: [Previous](@previous)

import Foundation

/*
 
 345. Reverse Vowels of a String
 
 Write a function that takes a string as input and reverse only the vowels of a string.
 
 Example 1:
    Given s = "hello", return "holle".
 
 Example 2:
    Given s = "leetcode", return "leotcede".
 
 Note:
    The vowels does not include the letter "y".
 
 */

class Solution {
    func reverseVowels(_ s: String) -> String {
        
        var vowels: [String] = []
        var result = ""
        
        for vowel in s {
            
            let lower = String(vowel).lowercased()
            
            if lower == "a" || lower == "e" || lower == "i" || lower == "o" || lower == "u" {
                vowels.insert(String(vowel), at: 0)
            }
        }
        
        for char in s {
            
            let lower = String(char).lowercased()
            
            if lower == "a" || lower == "e" || lower == "i" || lower == "o" || lower == "u" {
                result += vowels[0]
                vowels.remove(at: 0)
                continue
            }
            
            result += String(char)
        }
        
        return result
    }
}

let solution = Solution()
solution.reverseVowels("aAaEe")
