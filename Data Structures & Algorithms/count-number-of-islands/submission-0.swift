class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var queue = Deque<(Int, Int)>()
        var visited = [[Int]](repeating: [Int](repeating: 0, count: 101), count: 101)
        var islands = 0
        func visit() {
            islands += 1
            while !queue.isEmpty {
                guard let (i, j) = queue.popFirst(), visited[i][j] == 0 else {
                    continue
                }
                visited[i][j] = 1
                if i + 1 < grid.count && visited[i + 1][j] == 0 && grid[i + 1][j] == Character("1") {
                    queue.append((i + 1, j))
                }
                if j + 1 < grid[0].count && visited[i][j + 1] == 0 && grid[i][j + 1] == Character("1") {
                    queue.append((i, j + 1))
                }
                if i - 1 >= 0 && visited[i - 1][j] == 0 && grid[i - 1][j] == Character("1") {
                    queue.append((i - 1, j))
                }
                if j - 1 >= 0 && visited[i][j - 1] == 0 && grid[i][j - 1] == Character("1") {
                    queue.append((i, j - 1))
                }
            }
        }
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == Character("1") && visited[i][j] == 0 {
                    queue.append((i,j))
                    visit()
                }
            }
        }
        return islands
    }
}
