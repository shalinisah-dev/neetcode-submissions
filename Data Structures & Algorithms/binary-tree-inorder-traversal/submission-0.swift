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
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }
        let left = inorderTraversal(root.left)
        var arr = Array(left)
        arr.append(root.val)
        let right = inorderTraversal(root.right)
        arr.append(contentsOf: right)
        return arr

    }
}
