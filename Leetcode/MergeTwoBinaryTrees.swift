//
//  MergeTwoBinaryTrees.swift
//  Leetcode
//
//  Created by daniel on 11/23/18.
//  Copyright © 2018 daniel.chang. All rights reserved.
//

import Foundation

// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}
 
func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
    if t1 == nil {
        return t2
    }
    if t2 == nil {
        return t1
    }
    var temp: TreeNode? = nil
    if let _t1 = t1, let _t2 = t2 {
        temp = TreeNode(_t1.val + _t2.val)
        temp?.left = mergeTrees(_t1.left, _t2.left)
        temp?.right = mergeTrees(_t1.right, _t2.right)
    }
    return temp
    
}
