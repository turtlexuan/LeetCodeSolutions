//: [Previous](@previous)

import Foundation

/*
 
 9. Palindrome Number
 
 Determine whether an integer is a palindrome. Do this without extra space.
 
 Some hints:
    Could negative integers be palindromes? (ie, -1)
 
    If you are thinking of converting the integer to string, note the restriction of using extra space.
 
    You could also try reversing an integer. However, if you have solved the problem "Reverse Integer", you know that the reversed integer might overflow. How would you handle such case?
 
    There is a more generic way of solving this problem.
 
 */

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        
        for i in 0..<Int(String(x).count / 2) {
            if Array(String(x))[i] != Array(String(x))[Array(String(x)).count - 1 - i] {
                return false
            }
        }
        
        return true
    }
}

let solution = Solution()
solution.isPalindrome(12121)
