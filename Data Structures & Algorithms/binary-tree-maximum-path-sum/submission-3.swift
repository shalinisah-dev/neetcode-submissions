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

    func dfs(_ root: TreeNode?,_ maxSum: inout Int) -> Int {
        guard let root else {
            return -1000
        }
        let maxLeftPathSum = dfs(root.left, &maxSum)
        let maxRightPathSum = dfs(root.right, &maxSum)
        maxSum = max(maxSum, root.val)
        maxSum = max(maxSum, maxLeftPathSum + maxRightPathSum + root.val)
        let choose1Path = max(maxLeftPathSum, maxRightPathSum) + root.val
        maxSum = max(maxSum, choose1Path)
        return max(choose1Path, root.val) // Return the 1 path that seems to be the heaviest.
    }

    func maxPathSum(_ root: TreeNode?) -> Int {
        var maxSum = -1000
        _ = dfs(root, &maxSum)
        return maxSum
    }
}
