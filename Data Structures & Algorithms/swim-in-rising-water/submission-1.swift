class Solution {
    var cache = [[Int]]()

    func swimInWater(_ grid: [[Int]]) -> Int {
        cache = [[Int]](
            repeating: [Int](repeating: -1, count: grid.count),
            count: grid.count
        )
        dfs(0, 0, grid.count, grid, 0)
        return cache[grid.count - 1][grid.count - 1]
    }

    func dfs(_ i: Int, _ j: Int, _ n: Int,
             _ grid: [[Int]], _ time: Int) {
        if i < 0 || j < 0 || i >= n || j >= n {
            return
        }

        let newTime = max(time, grid[i][j])

        // Already reached this cell with an equal or better time.
        if cache[i][j] != -1 && cache[i][j] <= newTime {
            return
        }
        cache[i][j] = newTime

        if i == n - 1 && j == n - 1 {
            return
        }

        dfs(i + 1, j, n, grid, newTime)
        dfs(i, j + 1, n, grid, newTime)
        dfs(i - 1, j, n, grid, newTime)
        dfs(i, j - 1, n, grid, newTime)
    }
}