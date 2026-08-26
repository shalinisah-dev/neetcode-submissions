class Solution {
    func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
        guard let root else {
            return nil
        }

        if key < root.val {
            root.left = deleteNode(root.left, key)
        } else if key > root.val {
            root.right = deleteNode(root.right, key)
        } else {
            // Zero or one child
            if root.left == nil {
                return root.right
            }

            if root.right == nil {
                return root.left
            }

            // Two children: find the inorder successor
            var successor = root.right!
            while let left = successor.left {
                successor = left
            }

            root.val = successor.val
            root.right = deleteNode(root.right, successor.val)
        }

        return root
    }
}