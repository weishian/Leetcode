//
//  FlippingImage.swift
//  Leetcode
//
//  Created by daniel.chang on 11/22/18.
//  Copyright © 2018 daniel.chang. All rights reserved.
//

import Foundation

func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
    var result = [[Int]]()
    
    for arr in A {
        var flipped = [Int]()
        for item in arr {
            flipped.insert(item ^ 1, at: flipped.startIndex)
        }
        result.append(flipped)
    }
    
    return result
}
