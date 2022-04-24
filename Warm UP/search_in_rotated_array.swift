/*
PROBLEM LINK: https://leetcode.com/problems/search-in-rotated-sorted-array/
Input: nums = [4,5,6,7,0,1,2], target = 0
Output: 4
*/

func search(_ nums: [Int], _ target: Int) -> Int {
        var low: Int = 0
        var high: Int = nums.count - 1
        
        while(low <= high) {
            var mid = (low + high) / 2
            if nums[mid] == target {
                return mid
            } else if nums[low] <= nums[mid] {
                if target >= nums[low] && target <= nums[mid] {
                    high = mid - 1
                } else {
                    low = mid + 1
                }
            } else {
                if target > nums[mid] && target <= nums[high] {
                    low = mid + 1
                } else {
                    high = mid - 1
                }
            }
        }
        return -1
    }
