//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     
     650. 2 Keys Keyboard
     
     Initially on a notepad only one character 'A' is present. You can perform two operations on this notepad for each step:
     
     Copy All: You can copy all the characters present on the notepad (partial copy is not allowed).
     Paste: You can paste the characters which are copied last time.
     Given a number n. You have to get exactly n 'A' on the notepad by performing the minimum number of steps permitted. Output the minimum number of steps to get n 'A'.
     
     Example 1:
        Input: 3
        Output: 3
     
     Explanation:
        Intitally, we have one character 'A'.
        In step 1, we use Copy All operation.
        In step 2, we use Paste operation to get 'AA'.
        In step 3, we use Paste operation to get 'AAA'.
     
     Note:
        The n will be in the range [1, 1000].
     
     */
    
    func minSteps(_ n: Int) -> Int {
        
        if n == 1 {
            return 0
        }
        
        if isPrime(n) {
            return n
        }
        
        var devider = 2
        var restN = n
        var primeFactors: [Int] = []
        
        while !isPrime(restN) && restN != 1 {
            
            while devider <= restN {
                
                if restN % devider == 0 {
                    
                    restN = Int(restN / devider)
                    primeFactors.append(devider)
                    devider = 2
                } else {
                    
                    devider += 1
                }
            }
        }
        
        return primeFactors.reduce(0, +)
    }
    
    func isPrime(_ number: Int) -> Bool {
        return number > 1 && !(2..<number).contains { number % $0 == 0 }
    }
}

let solution = Solution()
solution.minSteps(4)
