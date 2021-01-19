import Foundation

// Math
func numIdenticalPairs(_ nums: [Int]) -> Int {
    
    var dict: [Int: Int] = [:]
    
    for num in nums {
        dict[num] = (dict[num] ?? 0) + 1
    }
        
    return dict.reduce(0) { (initial, next) in
        let next = ((next.value) * (next.value - 1)) / 2
        return initial + next
    }
}

numIdenticalPairs([1, 3, 2, 3, 1, 1])
numIdenticalPairs([1 ,1, 1, 1])


