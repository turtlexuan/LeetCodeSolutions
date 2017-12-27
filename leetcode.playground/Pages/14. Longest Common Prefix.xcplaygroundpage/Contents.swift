//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     14. Longest Common Prefix
     
     Write a function to find the longest common prefix string amongst an array of strings.
     
     */
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        if strs.count == 0 {
            
            return ""
        }
        
        if strs.count == 1 {
            
            return strs[0]
        }
        
        let firstString = Array(strs[0])
        let secondString = Array(strs[1])
        var prefix: [String] = []
        
        for (index, item) in firstString.enumerated() {
            
            if secondString.indices.contains(index) {
                
                if item == secondString[index] {
                    
                    prefix.append(String(item))
                } else {
                    break
                }
            }
        }
        
        if prefix.count == 0 {
            
            return ""
        }
        
        for str in strs {
            
            if str.hasPrefix(prefix.joined()) {
                
                continue
            } else {
                
                repeat {
                    
                    if prefix.count == 0 {
                        return ""
                    }
                    
                    prefix.remove(at: prefix.count - 1)
                    
                } while !str.hasPrefix(prefix.joined())
            }
        }
        
        return prefix.joined()
    }
}
