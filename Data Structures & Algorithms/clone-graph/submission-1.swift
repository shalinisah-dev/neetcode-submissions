class Solution {
    func cloneGraph(_ node: Node?) -> Node? {
        guard let node else {
            return nil
        }

        var queue = Deque<(Node, Node)>()
        var visited = [Int](repeating: 0, count: 101)
        var IDToNode = [Int: Node]()

        let copyRoot = Node(node.val)
        IDToNode[node.val] = copyRoot
        visited[node.val] = 1                 // Mark when enqueued
        queue.append((node, copyRoot))

        while !queue.isEmpty {
            guard let (cur, copy) = queue.popFirst() else {
                continue
            }

            for conn in cur.neighbors {
                guard let conn else {
                    continue
                }

                if visited[conn.val] == 1 {
                    if let copyConn = IDToNode[conn.val] {
                        copy.neighbors.append(copyConn)
                    }
                    continue
                }

                let copyConn = Node(conn.val)
                copy.neighbors.append(copyConn)
                IDToNode[conn.val] = copyConn
                visited[conn.val] = 1         // Mark when enqueued
                queue.append((conn, copyConn))
            }
        }

        return copyRoot
    }
}