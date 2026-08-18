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
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard let root else {
            return [Int]()
        }
        var arr = [Int]()
        var queue = [root]
        var head = 0
        while head < queue.count {
            let levelElements = queue.count - head
            arr.append(queue[head+levelElements-1].val)
            // preparing the next level
            for i in head..<head+levelElements {
                let cur = queue[i]
                if let left = cur.left {
                    queue.append(left)
                }
                if let right = cur.right {
                    queue.append(right)
                }
            }
            head += levelElements
        }
        return arr
    }
}
