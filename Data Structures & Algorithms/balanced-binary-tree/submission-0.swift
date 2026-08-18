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
    func dfs(_ root: TreeNode?,_ balanced: inout Bool) -> Int {
        guard let root, balanced else {
            return 0
        }
        let leftHeight = dfs(root.left, &balanced)
        let rightHeight = dfs(root.right, &balanced)
        if (abs(leftHeight-rightHeight) > 1) {
            balanced = false
        }
        return max(leftHeight, rightHeight) + 1
    }
    func isBalanced(_ root: TreeNode?) -> Bool {
        var balanced: Bool = true
        _ = dfs(root, &balanced)
        return balanced
    }
}
