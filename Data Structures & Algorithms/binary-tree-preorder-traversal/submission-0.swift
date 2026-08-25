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
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var ans = [Int]()
        func preorderTraversal(_ root: TreeNode?,_ ans: inout [Int]) {
            guard let root else {
                return
            }
            ans.append(root.val)
            preorderTraversal(root.left, &ans)
            preorderTraversal(root.right, &ans)
        }
        preorderTraversal(root, &ans)
        return ans
    }
}
