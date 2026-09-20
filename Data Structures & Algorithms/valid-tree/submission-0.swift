class Solution {
    func validTree(_ n: Int, _ edges: [[Int]]) -> Bool {
        var visited = [Int](repeating: 0, count: n)
        var edgeMap = [[Int]](repeating: [Int](), count: n)
        for edge in edges {
            edgeMap[edge[0]].append(edge[1])
            edgeMap[edge[1]].append(edge[0])
        }
        func dfs(_ i: Int,_ parent: Int) -> Bool {
            for j in edgeMap[i] {
                guard j != parent else {
                    continue
                }
                guard visited[j] == 0 else {
                    return false
                }
                visited[j] = 1
                guard dfs(j, i) else {
                    return false
                }
            }
            return true
        }
        visited[0] = 1
        guard dfs(0, 0) else {
            return false
        }
        for i in 0..<n {
            if visited[i] == 0 {
                return false
            }
        }
        return true
    }
}
