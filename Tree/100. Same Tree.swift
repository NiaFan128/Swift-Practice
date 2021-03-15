//
//  100. Same Tree
//  
//
//  Created by Nia Fan on 2021/03/15.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
 
func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    
    if p == nil, q == nil {
        return true
    }
    
    if p == nil || q == nil {
        return false
    }
    
    return p?.val == q?.val && isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
}

let tree1 = TreeNode(1, TreeNode(2), TreeNode(3))
let tree2 = TreeNode(1, TreeNode(2), TreeNode(3))
let tree3 = TreeNode(1, TreeNode(2), TreeNode(1))
let tree4 = TreeNode(1, TreeNode(1), TreeNode(2))
isSameTree(tree1, tree2) // true
isSameTree(tree3, tree4) // false

