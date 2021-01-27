import Foundation

// Array
func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    let max = candies.max() ?? 0
    let result = candies.map { (child) in
        return child + extraCandies >= max
    }
    return result
}

kidsWithCandies([2,3,5,1,3], 3)
kidsWithCandies([4,2,1,1,2], 1)
kidsWithCandies([12,1,12], 10)
