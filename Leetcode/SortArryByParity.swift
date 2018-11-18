//
//  SortArryByParity.swift
//  Leetcode
//
//  Created by daniel on 11/18/18.
//  Copyright © 2018 daniel.chang. All rights reserved.
//

import Foundation

func sortArrayByParity(_ A: [Int]) -> [Int] {
    
    guard A.count >= 1, A.count <= 5000 else { return [] }
    
    var sortedArray = [Int]()
    var evens = [Int]()
    var odds = [Int]()
    
    for num in A {
        if num % 2 == 0 {
            evens.append(num)
        }
        else {
            odds.append(num)
        }
    }
    
    sortedArray.append(contentsOf: evens)
    sortedArray.append(contentsOf: odds)
    return sortedArray
}
