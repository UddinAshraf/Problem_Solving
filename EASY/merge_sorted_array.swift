//
//  File.swift
//  
//
//  Created by Ashraf Uddin on 22/4/22.
//
/*
 PROBLEM LINK: https://leetcode.com/problems/merge-sorted-array/
 Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
 Output: [1,2,2,3,5,6]
 */
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
  var p1 = 0
  var p2 = 0
  var ans: [Int] = []
    
  if n == 0 {
      return
  } else if m == 0 {
      for i in 0 ..< n {
          nums1[i] = nums2[i]
      }
      return
  }
    
  for i in m ..< m + n {
    nums1[i] = 1000000000 + 1
  }
    
  for i in 0 ..< m + n {
      if p1 == m {
          while p2 < n {
              ans.append(nums2[p2])
              p2 = p2 + 1;
          }
          break;
      }
      if p2 == n {
          while p1 < m {
              ans.append(nums1[p1])
              p1 = p1 + 1;
          }
          break;
      }
      let valueWithp1 = nums1[p1]
      let valueWithp2 = nums2[p2]
      
      if valueWithp1 <= valueWithp2 {
          ans.append(valueWithp1)
          p1 = p1 + 1
      } else {
         ans.append(valueWithp2)
          p2 = p2 + 1
          
      }
  }
    nums1 = ans
    
}
