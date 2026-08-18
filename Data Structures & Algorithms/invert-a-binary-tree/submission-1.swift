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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let localroot = root else {
            return nil
        }
        let left = invertTree(localroot.left)
        let right = invertTree(localroot.right)
        localroot.left = right
        localroot.right = left
        return localroot
    }
}
