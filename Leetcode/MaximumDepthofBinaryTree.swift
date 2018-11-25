//
//  MaximumDepthofBinaryTree.swift
//  Leetcode
//
//  Created by daniel on 11/23/18.
//  Copyright © 2018 daniel.chang. All rights reserved.
//

import Foundation

func maxDepth(_ root: TreeNode?) -> Int {
    if let r = root {
        let left_depth = maxDepth(r.left)
        let right_depth = maxDepth(r.right)
        return max(left_depth, right_depth) + 1
    }
    else {
        return 0
    }
}
