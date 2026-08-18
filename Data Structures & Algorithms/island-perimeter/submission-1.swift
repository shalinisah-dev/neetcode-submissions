class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        let n = grid.count
        var res = 0
        for i in 0..<n {
            let m = grid[i].count
            for j in 0..<m {
                if grid[i][j] == 1 {
                    if (i + 1) >= n || grid[i + 1][j] == 0 {
                        res += 1
                    }
                    if (j + 1) >= m || grid[i][j + 1] == 0 {
                        res += 1
                    }
                    if (i - 1) < 0 || grid[i - 1][j] == 0 {
                        res += 1
                    }
                    if (j - 1) < 0 || grid[i][j - 1] == 0 {
                        res += 1
                    }
                }
            }
        }
        return res
    }
}
