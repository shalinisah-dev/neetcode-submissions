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
        var arr = [Int]()
        inorderTraversal(root, &arr)
        return arr
    }

    func inorderTraversal(_ root: TreeNode?,_ arr: inout [Int]) {
        guard let root = root else {
            return
        }
        inorderTraversal(root.left, &arr)
        arr.append(root.val)
        inorderTraversal(root.right, &arr)
    }
}
