//
//  majority_element.swift
//  Tise
//
//  Created by Ashraf Uddin on 18/4/22.
//  Copyright © 2022 Tise. All rights reserved.
//

/*
 PROBLEM LINK: https://leetcode.com/problems/majority-element/
 Input: nums = [2,2,1,1,1,2,2]
 Output: 2
 */
func majorityElement(_ nums: [Int]) -> Int {
     var dic: [Int:Int] = [:]
     var mx = 0
     var ans = nums[0]
     
     for num in nums {
         if let val = dic[num] {
             dic[num] = val + 1
         } else {
             dic[num] = 1
         }
     }
     
     for num in nums {
         if let val = dic[num], val > mx {
             mx = val
             ans = num
         }
     }
     
     return ans
 }
