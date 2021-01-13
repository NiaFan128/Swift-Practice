import Foundation

func maxSubArray(_ nums: [Int]) -> Int {
    
    if nums.isEmpty {
        return Int.min
    }
    
    var maxValue = nums[0]
    var preMax = nums[0]
    
    for i in 1..<nums.count {
        let value = nums[i]
        let curMax = max(preMax + value, value)
        maxValue = max(maxValue, curMax)
        preMax = curMax
    }
    return maxValue
}

maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
