//
//  1207. Unique Number of Occurrences
//  
//
//  Created by Nia Fan on 2021/03/04.
//

import Foundation

func uniqueOccurences(_ arr: [Int]) -> Bool {
    
    var numsDict = [Int:Int]()
    
    for num in arr {
        numsDict[num, default: 0] += 1
    }
    
    return Set(Array(numsDict.values)).count == numsDict.keys.count
}

uniqueOccurences([1,2])
uniqueOccurences([1,2,2,1,1,3])
uniqueOccurences([3,5,-2,-3,-6,-6])
