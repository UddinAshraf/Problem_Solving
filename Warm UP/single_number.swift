//
//  single_number.swift
//  
//
//  Created by Ashraf Uddin on 19/4/22.
//
/*
 PROBLEM LINK: https://leetcode.com/problems/single-number/
 Input: nums = [2,2,1]
 Output: 1
 */

import Foundation
func singleNumber(_ nums: [Int]) -> Int {
    var dic: [Int:Int] = [:]
    var ans = nums[0]
    
    for num in nums{
        if let val = dic[num] {
            dic[num] = val + 1
        } else {
            dic[num] = 1
        }
    }
    for num in nums {
        
        if let val = dic[num], val == 1 {
            ans = num
            break
        }
    }
    
    return ans
}
