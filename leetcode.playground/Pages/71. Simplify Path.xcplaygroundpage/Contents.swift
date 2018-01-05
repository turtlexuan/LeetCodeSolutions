//: [Previous](@previous)

import Foundation

class Solution {
    
    /*
     
     71. Simplify Path
     
     Given an absolute path for a file (Unix-style), simplify it.
     
     For example,
        path = "/home/", => "/home"
        path = "/a/./b/../../c/", => "/c"
     
     Corner Cases:
        Did you consider the case where path = "/../"?
        In this case, you should return "/".
        Another corner case is the path might contain multiple slashes '/' together, such as "/home//foo/".
        In this case, you should ignore redundant slashes and return "/home/foo".
     
     */
    
    func simplifyPath(_ path: String) -> String {
        
        let paths = path.components(separatedBy: "/")
        var results: [String] = []
        
        for path in paths {
            
            if path == "." {
                continue
            } else if path == ".." {
                
                if !results.isEmpty {
                    results.removeLast()
                }
            } else {
                
                if path != "" {
                    results.append(path)
                }
            }
        }
        
        return "/" + results.joined(separator: "/")
    }
}

let solution = Solution()
solution.simplifyPath("/home/foo/.ssh/../.ssh2/authorized_keys/")
