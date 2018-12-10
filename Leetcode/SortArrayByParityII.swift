//
//  SortArrayByParityII.swift
//  Leetcode
//
//  Created by daniel on 12/10/18.
//  Copyright © 2018 daniel.chang. All rights reserved.
//

import Foundation

func sortArrayByParityII(_ A: [Int]) -> [Int] {
    var result = [Int]()
    var odd = [Int]()
    var even = [Int]()
    for i in 0..<A.count {
        let char = A[i]
        if char % 2 == 0 { //even
            even.append(char)
        }
        else { // odd
            odd.append(char)
        }
    }
    result.append(contentsOf: even)
    for j in 0..<odd.count {
        let index = j * 2
        if index == 0 {
            result.insert(odd[j], at: 1)
        }
        else {
            result.insert(odd[j], at: index + 1)
        }
    }
    return result
}
