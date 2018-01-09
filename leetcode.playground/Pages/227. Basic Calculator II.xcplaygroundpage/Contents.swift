//: [Previous](@previous)

import Foundation

/*
 
 227. Basic Calculator II
 
 Implement a basic calculator to evaluate a simple expression string.
 
 The expression string contains only non-negative integers, +, -, *, / operators and empty spaces . The integer division should truncate toward zero.
 
 You may assume that the given expression is always valid.
 
 Some examples:
    "3+2*2" = 7
    " 3/2 " = 1
    " 3+5 / 2 " = 5
 
 Note: Do not use the eval built-in library function.
 
 */

class Solution {
    func calculate(_ s: String) -> Int {
        
        var sArray = Array(s).filter { $0 != " " }.map { String($0) }
        sArray = checkMoreThanOneDigit(sArray)
        var tempArray: [String] = []
        var result = 0
        var i = 0
        
        while i != sArray.count {
            
            var temp = 0
            
            switch sArray[i] {
                
            case "+", "-":
                
                tempArray.append(sArray[i])
            case "*":
                
                temp = Int(tempArray.last!)! * Int(sArray[i + 1])!
                tempArray.removeLast()
                tempArray.append(String(temp))
                i += 1
            case "/":
                
                temp = Int(tempArray.last!)! / Int(sArray[i + 1])!
                tempArray.removeLast()
                tempArray.append(String(temp))
                i += 1
            default:
                
                if tempArray.indices.contains(i - 1), let lastNum = Int(tempArray[i - 1]) {
                    temp = lastNum * 10 + Int(sArray[i])!
                    tempArray.removeLast()
                    tempArray.append(String(temp))
                } else {
                    tempArray.append(sArray[i])
                }
            }
            
            i += 1
        }
        
        i = 0
        
        while i != tempArray.count {
            
            switch tempArray[i] {
            case "+":
                
                result = result + Int(tempArray[i + 1])!
                i += 1
            case "-":
                
                result = result - Int(tempArray[i + 1])!
                i += 1
            default:
                result += Int(tempArray[i])!
            }
            i += 1
        }
        
        return result
    }
    
    func checkMoreThanOneDigit(_ a: [String]) -> [String] {
        
        var tempArray : [String] = []
        var digit: Double = 1
        
        for char in a {
            
            if Int(char) != nil {
                
                if tempArray.indices.contains(tempArray.count - 1), let lastNum = Int(tempArray[tempArray.count - 1]) {
                    
                    let temp = lastNum * 10 + Int(char)!
                    tempArray.removeLast()
                    tempArray.append(String(temp))
                    digit += 1
                } else {
                    tempArray.append(char)
                }
            } else {
                tempArray.append(char)
            }
        }
        
        return tempArray
    }
}

let solution = Solution()
solution.calculate(" 13+5 / 2 ")
solution.checkMoreThanOneDigit(["1", "2", "3", "4", "+", "1", "5"])
