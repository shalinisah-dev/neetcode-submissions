class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var ans = 0
        var queue = Deque<[Int]>()
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 2 {
                    queue.append([i, j, 0])
                }
            }
        }
        var visited = [[Int]: Bool]()
        while !queue.isEmpty {
            let first = queue.removeFirst()
            if let processed = visited[[first[0], first[1]]] {
                continue
            }
            visited[[first[0], first[1]]] = true
            let deltas = [(0, -1), (-1, 0), (0, 1), (1, 0)]
            for delta in deltas {
                let nextX = first[0] + delta.0
                let nextY = first[1] + delta.1
                guard nextX >= 0 && nextY >= 0 && nextX < grid.count && nextY < grid[0].count else {
                    continue
                }
                if grid[nextX][nextY] == 1 {
                    queue.append([nextX, nextY, first[2] + 1])
                }
            }
            ans = first[2]
        }
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 && visited[[i, j]] != true {
                    return -1
                }
            }
        }
        return ans
    }
}
