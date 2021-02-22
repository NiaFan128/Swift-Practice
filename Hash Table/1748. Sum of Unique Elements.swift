//
//  1748. Sum of Unique Elements
//  
//
//  Created by Nia Fan on 2021/02/22.
//

import Foundation

func sumOfUnique(_ nums: [Int]) -> Int {
    
    var result = 0
    var numsDict = [Int:Int]()
    
    for num in nums {
        numsDict[num, default: 0] += 1
    }
    
    for (key, value) in numsDict {
        if value == 1 {
            result += key
        }
    }
    
    return result
}

sumOfUnique([1,2,3,2])
sumOfUnique([1,1,1,1,1])
sumOfUnique([1,2,3,4,5])
