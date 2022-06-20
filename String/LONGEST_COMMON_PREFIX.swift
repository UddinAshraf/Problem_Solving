//
//  LONGEST_COMMON_PREFIX.swift
//  PROBLEM LINK: https://leetcode.com/problems/longest-common-prefix/
//
//  Created by Ashraf Uddin on 20/6/22.
//

import Foundation
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let sortedStrings = strs.sorted { a, b in
        return a.count < b.count
    }

    guard let smallString = sortedStrings.first else { return "" }
    
    var ans = ""
    for i in 0 ..< smallString.count {
        for str in sortedStrings {
            if smallString.getCharAtIndex(i) != str.getCharAtIndex(i) {
                return ans
            }
            
        }
        ans.append(contentsOf: String(smallString.getCharAtIndex(i)))
        
    }
    
    return ans
    }
}

extension String {
    func getCharAtIndex(_ index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}
