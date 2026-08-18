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
    func dfs(_ root: TreeNode?, _ maxNode: Int) -> Int {
        guard let root else {
            return 0
        }
        var res = 0
        if root.val >= maxNode {
            res = 1
        }
        res += dfs(root.left, max(root.val, maxNode))
        res += dfs(root.right, max(root.val, maxNode))
        return res
    }
    func goodNodes(_ root: TreeNode?) -> Int {
        return dfs(root, -100)
    }
}
