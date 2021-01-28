//
//  268. Missing Number.swift
//  
//
//  Created by Nia Fan on 2021/01/11.
//

import Foundation

func missingNumber(_ nums: [Int]) -> Int {
    
    let sortedNums = nums.sorted()
    
    for (index, num) in sortedNums.enumerated() {
        if index != num {
            return index
        }
    }
    return nums.count
}

missingNumber([9,6,4,2,3,5,7,0,1])
