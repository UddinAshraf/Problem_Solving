//
//  sort_colors.swift
//  
//
//  Created by Ashraf Uddin on 25/4/22.
//

/*
 PROBLEM LINK: https://leetcode.com/problems/sort-colors/
 Input: nums = [2,0,2,1,1,0]
 Output: [0,0,1,1,2,2]
 */

func sortColors(_ nums: inout [Int]) {
    var colors = [Int](repeating: 0, count: 3)
    var ans: [Int] = []
    
    for num in nums {
        colors[num] = colors[num] + 1
    }
    
    for i in 0 ..< colors[0] {
        ans.append(0)
    }
    
    for i in 0 ..< colors[1] {
        ans.append(1)
    }
    
    for i in 0 ..< colors[2] {
        ans.append(2)
    }
    
    nums = ans
}
