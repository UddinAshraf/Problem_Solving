//
//  valid_mountain.swift
//  
//
//  Created by Ashraf Uddin on 20/4/22.
//

/*
 PROBLEM LINK:
 https://leetcode.com/problems/valid-mountain-array/submissions/
 Input: arr = [0,3,2,1]
 Output: true
 */

import Foundation

func validMountainArray(_ arr: [Int]) -> Bool {
    
    guard arr.count >= 3 else { return false }
    var maxValIndex = 0
    var maxVal = arr[0]
    var ans = true
    //finding the peak
    for (index, num) in arr.enumerated() {
        if num > maxVal {
            maxVal = num
            maxValIndex = index
        }
    }
    
    if maxValIndex == arr.count - 1 || maxValIndex == 0 {
        return false
        
    }
    
    var minVal = -1
    var peakVal = arr[maxValIndex]
    print("peakVal \(peakVal)")
    for (index, num) in arr.enumerated() {
        if index <= maxValIndex {
            if num <= minVal {
                ans = false
            }
            minVal = num
        } else {
            if num >= peakVal {
                ans = false
            }
            peakVal = num
        }
    }
    return ans
}
