/*
 PROBLEM LINK: https://leetcode.com/problems/jump-game/
 Input: nums = [3,2,1,0,4]
 Output: false
*/

func canJump(_ nums: [Int]) -> Bool {
    var canJumpMax = 0
    
    for (index, num) in nums.enumerated() {
        
        if num == 0 && canJumpMax <= index && index != nums.count - 1 {
            return false
        } else {
            canJumpMax = max(canJumpMax, index + num)
        }
    }
    
    return true
}
