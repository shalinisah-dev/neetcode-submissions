/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root else {
            return TreeNode(val)
        }
        var ans: TreeNode?
        if root.val < val {
            ans = insertIntoBST(root.right, val)
            if root.right == nil {
                root.right = ans
            }
        } else {
            ans = insertIntoBST(root.left, val)
            if root.left == nil {
                root.left = ans
            }
        }
        return root
    }
}
