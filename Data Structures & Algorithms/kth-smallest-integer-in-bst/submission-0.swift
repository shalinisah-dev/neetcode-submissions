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
    func kthSmallestHelper(_ root: TreeNode?, _ k: inout Int, _ ans: inout Int) {
        guard let root else {
            return
        }
        if k > 0 {
            kthSmallestHelper(root.left, &k, &ans)
        }
        if k <= 0 {
            return
        } else {
            k = k - 1
            if k == 0 {
                ans = root.val
            }
        }
        if k > 0 {
            kthSmallestHelper(root.right, &k, &ans)
        }
    }

    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        guard let root else {
            return -1
        }
        var kth = k
        var ans = -1
        kthSmallestHelper(root, &kth, &ans)
        return ans
    }
}
