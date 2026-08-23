class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var queue = Deque<(Int, Int)>()
        var visited = [[Int]](repeating: [Int](repeating: 0, count: 51), count: 51)
        var maxArea = 0
        func visit() -> Int {
            var area = 0
            while !queue.isEmpty {
                guard let (i, j) = queue.popFirst(), visited[i][j] == 0 else {
                    continue
                }
                visited[i][j] = 1
                area += 1
                if i + 1 < grid.count && visited[i + 1][j] == 0 && grid[i + 1][j] == 1 {
                    queue.append((i + 1, j))
                }
                if j + 1 < grid[0].count && visited[i][j + 1] == 0 && grid[i][j + 1] == 1 {
                    queue.append((i, j + 1))
                }
                if i - 1 >= 0 && visited[i - 1][j] == 0 && grid[i - 1][j] == 1 {
                    queue.append((i - 1, j))
                }
                if j - 1 >= 0 && visited[i][j - 1] == 0 && grid[i][j - 1] == 1 {
                    queue.append((i, j - 1))
                }
            }
            return area
        }
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 && visited[i][j] == 0 {
                    queue.append((i,j))
                    maxArea = max(maxArea, visit())
                }
            }
        }
        return maxArea
    }
}
