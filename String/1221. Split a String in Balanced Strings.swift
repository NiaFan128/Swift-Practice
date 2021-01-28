//
//  1221. Split a String in Balanced Strings
//  
//
//  Created by Nia Fan on 2021/01/25.
//

import Foundation

func balancedStringSplit(_ s: String) -> Int {
    
    let sTemp = Array(s)
    var result = [Character]()
    var count = 0
    for i in sTemp {
        result.append(i)
        if result.filter({$0 == "L"}).count == result.filter({$0 == "R"}).count {
            count += 1
            result.removeAll()
        }
    }
    return count
}

balancedStringSplit("RLRRLLRLRL")
balancedStringSplit("LLLLRRRR")
balancedStringSplit("RLRRRLLRLL")
