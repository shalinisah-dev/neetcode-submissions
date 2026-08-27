class Codec {
    func serialize(_ root: TreeNode?) -> String {
        var values = [String]()

        func dfs(_ node: TreeNode?) {
            guard let node else {
                values.append("#")
                return
            }

            values.append(String(node.val))
            dfs(node.left)
            dfs(node.right)
        }

        dfs(root)
        return values.joined(separator: ",")
    }

    func deserialize(_ data: String) -> TreeNode? {
        let values = data.split(separator: ",").map(String.init)
        var index = 0

        func dfs() -> TreeNode? {
            guard index < values.count else {
                return nil
            }

            let value = values[index]
            index += 1

            if value == "#" {
                return nil
            }

            guard let number = Int(value) else {
                return nil
            }

            let node = TreeNode(number)
            node.left = dfs()
            node.right = dfs()
            return node
        }

        return dfs()
    }
}