//
//  JewelsInStones.swift
//  Leetcode
//
//  Created by daniel.chang on 11/13/18.
//  Copyright © 2018 daniel.chang. All rights reserved.
//

import Foundation

func numJewelsInStones(_ J: String, _ S: String) -> Int {
    var numJewels: Int = 0
    
    for s in 0..<S.count {
        for j in 0..<J.count {
            let _s = S[S.index(S.startIndex, offsetBy: s)]
            if _s == J[J.index(J.startIndex, offsetBy: j)] {
                numJewels += 1
            }
        }
    }
    
    return numJewels
}
