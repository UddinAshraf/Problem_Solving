//
//  squares_of_a_sorted_array.swift
//  
//
//  Created by Ashraf Uddin on 16/4/22.
//

/*
 Problem link: https://leetcode.com/problems/squares-of-a-sorted-array/
 Input: nums = [-7,-3,2,3,11]
 Output: [4,9,9,49,121]
 */


func sortedSquares(_ nums: [Int]) -> [Int] {
    
    var ans: [Int] = []
  
    var minIndex: Int = 0
    var min: Int = nums[minIndex] * nums[minIndex]
    
    //Find the index of the minmium square value
    for (index, num) in nums.enumerated() {
        if (num * num) <= min {
            min = num * num
            minIndex = index
        }
    }

    let minSquareValue =  nums[minIndex] * nums[minIndex]
    ans.append(minSquareValue)
    
    var leftPointer: Int = minIndex - 1
    var rightPointer: Int = minIndex + 1
        
    while(true) {
        if leftPointer < 0 {
            while(rightPointer < nums.count) {
                ans.append(nums[rightPointer] * nums[rightPointer])
                rightPointer = rightPointer + 1
            }
            break
        }
        
        if rightPointer > nums.count - 1 {
            while(leftPointer >= 0) {
                ans.append(nums[leftPointer] * nums[leftPointer])
                leftPointer = leftPointer - 1
            }
            break
        }
        
        let leftPointerSquare = nums[leftPointer] * nums[leftPointer]
        let rightPointerSquare = nums[rightPointer] * nums[rightPointer]
        
        if leftPointerSquare <= rightPointerSquare {
            leftPointer = leftPointer - 1
            ans.append(leftPointerSquare)
        } else {
            rightPointer = rightPointer + 1
            ans.append(rightPointerSquare)
        }
    }
    return ans
}
