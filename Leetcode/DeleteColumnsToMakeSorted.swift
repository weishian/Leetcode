// test
//  DeleteColumnsToMakeSorted.swift
//  Leetcode
//
//  Created by daniel.chang on 12/4/18.
//  Copyright © 2018 daniel.chang. All rights reserved.
//

import Foundation

func minDeletionSize(_ A: [String]) -> Int {
    var d_size = [Int]()
    for index_a in A.indices {
        if (index_a+1) < A.count {
            let a_s1 = Array(A[index_a])
            let a_s2 = Array(A[index_a+1])
            for s_i in 0..<a_s1.count {
                if String(a_s1[s_i]) > String(a_s2[s_i]) && !d_size.contains(s_i)  {
                    d_size.append(s_i)
                }
            }
        }
        
    }
    return d_size.count
}
