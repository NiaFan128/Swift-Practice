//
//  392. Is Subsequence
//  
//
//  Created by Nia Fan on 2021/01/18.
//

import Foundation

func isSubsequence(_ s: String, _ t: String) -> Bool {

    if t.count < s.count {
        return false
    }
    
    if s == "" || s.isEmpty || s == t {
        return true
    }
    
    var index = 0
    var sArray = Array(s)
    
    for tChar in t {
        if sArray[index] == tChar {
            index += 1
            if index == sArray.count {
                return true
            }
        }
    }
    
    return false
}

isSubsequence("", "ahbgdc")
isSubsequence("abc", "ahbgdc")
isSubsequence("axc", "ahbgdc")
