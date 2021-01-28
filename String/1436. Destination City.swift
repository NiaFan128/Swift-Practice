//
//  1436. Destination City
//  
//
//  Created by Nia Fan on 2021/01/20.
//

import Foundation

func destCity(_ paths: [[String]]) -> String {
    
    var lhs = Set<String>()
    var rhs = Set<String>()
    
    for city in paths {
        lhs.insert(city[0])
        rhs.insert(city[1])
    }
    return rhs.subtracting(lhs).first ?? ""
}

destCity([["B","C"],["D","B"],["C","A"]])
