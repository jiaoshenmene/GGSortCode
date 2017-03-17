//
//  LeetCodeSort.swift
//  GGSortCode
//
//  Created by dujia on 10/03/2017.
//  Copyright © 2017 dujia. All rights reserved.
//

import Foundation

class LeetCodeSort: NSObject {
    
    static func example() -> Void
    {
        let arr =  LeetCodeSort.twoSum([3,3],6)
        
        print(arr)
    }
    static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var tmp = 0
        var mindex = 0
        if target < 0 {
            mindex = -target / 2
        }else{
            mindex = target / 2
        }
        
        
        for idx in 0...mindex {
            let cur_num =  target / 2 - idx;
            let index = nums.index(of: cur_num)
            
            if index != nil  {
                var otherNum = target - cur_num
                let other_idx = nums.index(of: otherNum)
                if other_idx != nil && other_idx != index {
                    if index! > other_idx! {
                        return [other_idx!,index!]
                    }else{
                        return [index!,other_idx!]
                    }
                    
                }
                
                
            }
        }
        
        return []
    }
}
