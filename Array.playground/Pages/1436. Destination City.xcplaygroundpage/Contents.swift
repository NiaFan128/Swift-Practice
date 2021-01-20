import Foundation

// String
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
