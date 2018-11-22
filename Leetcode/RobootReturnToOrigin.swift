//
//  RobootReturnToOrigin.swift
//  Leetcode
//
//  Created by daniel.chang on 11/19/18.
//  Copyright © 2018 daniel.chang. All rights reserved.
//

import Foundation

func judgeCircle(_ moves: String) -> Bool {
    var count = 0
    for i in moves.indices {
        let char = moves[moves.index(moves.startIndex, offsetBy: i.encodedOffset)]
        
        if char == "U" || char == "L" {
            count += 1
        }
        else {
            count -= 1
        }
    }
    if count == 0 {
        return true
    }
    else {
        return false
    }
}
