//
//  1365. How Many Numbers Are Smaller Than the Current Number
//  
//
//  Created by Nia Fan on 2021/02/18.
//

import Foundation

func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    
    var result = [Int]()
    
    for i in nums {
        result.append(nums.filter({ $0 < i }).count)
    }
    
    return result
}

smallerNumbersThanCurrent([8,1,2,2,3])
smallerNumbersThanCurrent([6,5,4,8])
smallerNumbersThanCurrent([7,7,7,7])
