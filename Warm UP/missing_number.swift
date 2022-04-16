//
//  missing_number.swift
//  
//
//  Created by Ashraf Uddin on 16/4/22.
//

/*
 Problem link: https://leetcode.com/problems/missing-number/
 TEST INPUT: [0,1]
 OUTPUT: 2
 */

func missingNumber(_ nums: [Int]) -> Int {
     var frequency = [Int](repeating: 0, count: 10001)
     var ans = 0
     
     for num in nums {
         frequency[num] = 1
     }
     
     for i in 0...nums.count + 1 {
         if frequency[i] == 0 {
             ans = i
             break
         }
     }
     
     return ans
 }

