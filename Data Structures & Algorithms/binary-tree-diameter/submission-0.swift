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

    func dfs(_ root: TreeNode?,_ diameter: inout Int) -> Int {
        guard let root else {
            return 0
        }
        let leftMaxHeight = dfs(root.left, &diameter)
        let rightMaxHeight = dfs(root.right, &diameter)
        diameter = max(diameter, leftMaxHeight + rightMaxHeight)
        return max(leftMaxHeight, rightMaxHeight) + 1 // root level
    }

    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root else {
            return 0
        }
        var diameter = 0
        _ = dfs(root, &diameter)
        return diameter
    }
}
