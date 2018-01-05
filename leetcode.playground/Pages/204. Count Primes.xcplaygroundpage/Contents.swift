//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     
     204. Count Primes
     
     Description:
     
        Count the number of prime numbers less than a non-negative number, n.
     
     */
    
    func countPrimes(_ n: Int) -> Int {
        
        if n <= 2 {
            return 0
        }
        
        var isPrime = Array(repeating: true, count: n)
        
        for i in 2..<n {
            if isPrime[i] {
                for j in stride(from: 2 * i, to: n, by: i) {
                    isPrime[j] = false
                }
            }
        }
        
        isPrime = isPrime.filter({ $0 == true })
        
        return isPrime.count - 2
    }
}

let solution = Solution()
solution.countPrimes(13)
