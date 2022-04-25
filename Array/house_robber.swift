/*
PROBLEM LINK: https://leetcode.com/problems/house-robber/
Input: nums = [1,2,3,1]
Output: 4
*/

func rob(_ nums: [Int]) -> Int {
    var oddIndexedSum = 0
    var evenIndexedSum = 0
    
    for i in 0 ..< nums.count {
        if i % 2 == 0 {
            evenIndexedSum = evenIndexedSum + nums[i]
            evenIndexedSum = evenIndexedSum > oddIndexedSum ? evenIndexedSum : oddIndexedSum
        } else {
            oddIndexedSum = oddIndexedSum + nums[i]
            oddIndexedSum = evenIndexedSum > oddIndexedSum ? evenIndexedSum : oddIndexedSum
        }
    }
    
    return max(oddIndexedSum, evenIndexedSum)
}
