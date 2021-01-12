import Foundation

func sortedSquares(_ nums: [Int]) -> [Int] {    
    return nums.map({ $0 * $0 }).sorted()
}

sortedSquares([-4,-1,0,3,10])
sortedSquares([-7,-3,2,3,11])
