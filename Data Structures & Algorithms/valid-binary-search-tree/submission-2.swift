class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        return validate(root, lower: nil, upper: nil)
    }

    private func validate(
        _ node: TreeNode?,
        lower: Int?,
        upper: Int?
    ) -> Bool {
        guard let node else {
            return true
        }

        if let lower, node.val <= lower {
            return false
        }

        if let upper, node.val >= upper {
            return false
        }

        return validate(node.left, lower: lower, upper: node.val)
            && validate(node.right, lower: node.val, upper: upper)
    }
}