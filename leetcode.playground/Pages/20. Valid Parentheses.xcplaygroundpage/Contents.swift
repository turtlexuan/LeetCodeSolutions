//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     
     20. Valid Parentheses
     
     Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
     
     The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.
     
     */
    
    func isValid(_ s: String) -> Bool {
        
        if s.count % 2 != 0 {
            return false
        }
        
        var valids: [String] = []
        
        for i in s {
            
            if i == "(" || i == "[" || i == "{" {
                valids.append(String(i))
                continue
            }
            
            if i == ")" {
                if valids.isEmpty || valids.last! != "(" {
                    return false
                } else {
                    valids.removeLast()
                }
            }
            
            if i == "]" {
                if valids.isEmpty || valids.last! != "[" {
                    return false
                }  else {
                    valids.removeLast()
                }
            }
            
            if i == "}" {
                if valids.isEmpty || valids.last! != "{" {
                    return false
                }  else {
                    valids.removeLast()
                }
            }
        }
        
        return valids.count == 0
    }
}

let solution = Solution()
solution.isValid("()[]{}")
