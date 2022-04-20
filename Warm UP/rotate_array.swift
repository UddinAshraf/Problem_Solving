//
//  rotate_array.swift
//  
//
//  Created by Ashraf Uddin on 20/4/22.
//

/*
 https://leetcode.com/problems/rotate-array/
 Input: nums = [-1,-100,3,99], k = 2
 Output: [3,99,-1,-100]
 */
import Foundation
func rotate(_ nums: inout [Int], _ k: Int) {
var ans: [Int] = []

let actualRotateNumber = k % nums.count
guard actualRotateNumber > 0 else {
    return
}

for i in (nums.count - actualRotateNumber) ..< nums.count {
    ans.append(nums[i])
}

for i in 0 ..< (nums.count - actualRotateNumber) {
    ans.append(nums[i])
}

nums = ans
}
