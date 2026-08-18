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
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        guard preorder.count > 0, preorder.count == inorder.count else {
            return nil
        }
        let rootVal = preorder.first!
        let root = TreeNode(rootVal)
        guard let rootIndex = inorder.firstIndex(of: rootVal) else {
            return nil
        }
        let inorderLeft = Array(inorder[..<rootIndex])
        let inorderRight = Array(inorder[inorder.index(after: rootIndex)...])
        let leftCount = inorderLeft.count
        let remainingPreorder = preorder.dropFirst()
        let preorderLeft = Array(remainingPreorder.prefix(leftCount))
        let preorderRight = Array(remainingPreorder.dropFirst(leftCount))

        root.left = buildTree(preorderLeft, inorderLeft)
        root.right = buildTree(preorderRight, inorderRight)
        return root
    }
}
