//: [Previous](@previous)

import Foundation

/*
 
 168. Excel Sheet Column Title
 
 Given a positive integer, return its corresponding column title as appear in an Excel sheet.
 
 For example:
 
    1 -> A
    2 -> B
    3 -> C
    ...
    26 -> Z
    27 -> AA
    28 -> AB
 
 */


/*:
 1. ABC = 1x26^2 + 2x26^1 + 3
 2. ZZZ =26x26^2 + 26x26^1 + 26
 */

class Solution {
    func convertToTitle(_ n: Int) -> String {
        
        var remain = n
        var result = ""
        
        if n - 1 < 26 {
            return String(describing: UnicodeScalar(n + 64)!)
        }
        
        while remain > 0 {
            
            let code = (remain - 1) % 26
            
            result = String(describing: UnicodeScalar(code + 65)!) + result
            
            remain = Int((remain - 1) / 26)
        }
        
        return result
    }
}

let solution = Solution()
solution.convertToTitle(28)

String(describing: UnicodeScalar(65))
UnicodeScalar(65)

Int(0)
