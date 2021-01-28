//
//  1662. Check If Two String Arrays are Equivalent
//  
//
//  Created by Nia Fan on 2021/01/26.
//

import Foundation

func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
    return word1.flatMap { $0 } == word2.flatMap { $0 }
}

arrayStringsAreEqual(["a", "bc"], ["ab", "c"])
