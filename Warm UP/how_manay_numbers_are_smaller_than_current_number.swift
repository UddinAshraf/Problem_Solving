//
//  how_manay_numbers_are_smaller_than_current_number.swift
//  
//
//  Created by Ashraf Uddin on 17/4/22.
//
/*
 PROBLEM LINK:
 https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/
 Input: nums = [8,1,2,2,3]
 Output: [4,0,1,1,3]
 */

func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    
    let sortedArray = nums.sorted()
    var dic: [Int: Int] = [:]
    for (index, num) in sortedArray.enumerated(){
        if dic[num] == nil {
            dic[num] = index
        }
    }
    
    var ans:[Int] = []
    
    for num in nums {
        if let numberOfMinimumValues = dic[num] {
            ans.append(numberOfMinimumValues)
        }
    }
    return ans
}
