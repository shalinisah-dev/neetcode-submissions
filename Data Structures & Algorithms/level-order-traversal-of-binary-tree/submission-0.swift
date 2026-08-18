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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root else {
            return [[Int]]()
        }
        var results = [[Int]]()
        var queue = [(root, 0)]
        var level = 0
        var arr = [Int]()
        while !queue.isEmpty {
            let cur = queue.removeFirst()
            if level == cur.1 {
                arr.append(cur.0.val)
            } else {
                level = cur.1
                results.append(arr)
                arr = [Int]()
                arr.append(cur.0.val)
            }
            if let left = cur.0.left {
                queue.append((left, cur.1 + 1))
            }
            if let right = cur.0.right {
                queue.append((right, cur.1 + 1))
            }
        }
        results.append(arr)
        return results
    }
}
