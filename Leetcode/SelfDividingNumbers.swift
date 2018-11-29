//
//  SelfDividingNumbers.swift
//  Leetcode
//
//  Created by daniel on 11/29/18.
//  Copyright © 2018 daniel.chang. All rights reserved.
//

import Foundation

func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var res = [Int]()
    for i in left...right {
        let str = String(i)
        var isSelfDividing = true
        for s_index in 0..<str.count {
            let char = str[str.index(str.startIndex, offsetBy: s_index)]
            if let charInt = Int(String(char)) {
                if charInt != 0 {
                    if i % charInt != 0  {
                        isSelfDividing = false
                    }
                }
                else {
                    isSelfDividing = false
                }
            }
        }
        if isSelfDividing {
            res.append(i)
        }
    }
    return res
}
