//
//  ArrayPartitionI.swift
//  Leetcode
//
//  Created by daniel on 11/29/18.
//  Copyright © 2018 daniel.chang. All rights reserved.
//

import Foundation

func arrayPairSum(_ nums: [Int]) -> Int {
    let sorted = nums.sorted()
    var sum = 0
    for i in 0..<sorted.count {
        if i % 2 == 0 {
            sum += sorted[i]
        }
    }
    return sum
}
