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
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard let p, let q else {
            if p == nil && q == nil {
                return true
            }
            return false
        }
        var result = p.val == q.val
        if result {
            result = isSameTree(p.left, q.left)
        }
        if result {
            result = isSameTree(p.right, q.right)
        }
        return result
    }
}
