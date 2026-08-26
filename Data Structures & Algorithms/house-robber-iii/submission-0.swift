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

extension TreeNode: Hashable {
    func hash(into hasher: inout Hasher) {
        // Hashes the unique memory reference of this object
        hasher.combine(ObjectIdentifier(self))
    }
    static func ==(lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs === rhs
    }
}

class Solution {
    func rob(_ root: TreeNode?) -> Int {
        var seen = [TreeNode: Int]()
        func robHelper(_ root: TreeNode?) -> Int {
            guard let root else {
                return 0
            }
            if let val = seen[root] {
                return val
            }
            let moneyWithoutRoot = robHelper(root.left) + robHelper(root.right)
            var moneyWithRoot = root.val + robHelper(root.left?.left) + robHelper(root.left?.right)
            moneyWithRoot += robHelper(root.right?.left)
            moneyWithRoot += robHelper(root.right?.right)
            seen[root] = max(moneyWithoutRoot, moneyWithRoot)
            return seen[root]!
        }
        return robHelper(root)
    }
}
