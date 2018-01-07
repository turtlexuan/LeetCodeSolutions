//: [Previous](@previous)

import Foundation

/*
 
 371. Sum of Two Integers
 
 Calculate the sum of two integers a and b, but you are not allowed to use the operator + and -.
 
 Example:
    Given a = 1 and b = 2, return 3.
 
 */

class Solution {
    func getSum(_ a: Int, _ b: Int) -> Int {
        
        var a = a
        var b = b
        
        while b != 0 {
            
            let carry = a & b
            a ^= b
            b = carry << 1
        }
        
        return a
    }
}

let solution = Solution()
solution.getSum(10, 10)

/*
 
 Note:
 
 ^ Operator (Bitwise XOR Operator) :
    位元 XOR 運算子^比較兩個數，然後回傳一個數，這個數的每個位元設為1的條件是兩個輸入數的同一位元不同，如果相同就設為0。
    例如 1(0001) ^ 4(0100) = 5(0101)
    例如 8(1000) ^ 7(0111) = 15(1111)
 
 */
