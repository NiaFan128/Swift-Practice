//
//  700. Search in a Binary Search Tree
//  
//
//  Created by Nia Fan on 2021/03/19.
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
 
func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    
    guard let node = root else { return nil }
    
    if node.val == val { return node }
    if node.val > val { return searchBST(node.left, val) }
    if node.val < val { return searchBST(node.right, val) }
    
    return nil
}

let node1 = TreeNode(4, TreeNode(2, TreeNode(1), TreeNode(3)), TreeNode(7))
searchBST(node1, 2)
