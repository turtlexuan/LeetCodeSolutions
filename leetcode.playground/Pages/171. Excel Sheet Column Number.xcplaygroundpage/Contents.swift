//: [Previous](@previous)

import Foundation

/*
 
 171. Excel Sheet Column Number
 
 Given a column title as appear in an Excel sheet, return its corresponding column number.
 
 For example:
 
    A -> 1
    B -> 2
    C -> 3
    ...
    Z -> 26
    AA -> 27
    AB -> 28
 
 */

class Solution {
    
    func titleToNumber(_ s: String) -> Int {
        
        let sArray = Array(s).reversed()
        var result = 0
        
        for (index, item) in sArray.enumerated() {
            
            let num = Unicode.Scalar(String(item))!.value - 64
            let powValue = Int(pow(Double(26), Double(index)))
            
            result += powValue * Int(num)
        }
        
        return result
    }
}

let solution = Solution()
solution.titleToNumber("AAA")

let uni = Unicode.Scalar("A")
uni?.value
