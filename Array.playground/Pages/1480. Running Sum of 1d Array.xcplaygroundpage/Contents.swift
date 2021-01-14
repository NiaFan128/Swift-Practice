import Foundation

func runningSum(_ nums: [Int]) -> [Int] {
    var temp = 0
    var sum = [Int]()
    
    for i in nums {
        temp = temp + i
        sum.append(temp)
    }
    
    return sum
}

runningSum([1,2,3,4])
