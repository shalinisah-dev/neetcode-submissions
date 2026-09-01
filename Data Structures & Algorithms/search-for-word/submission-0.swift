class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        let w = Array(word)
        guard w.count > 0 else {
            return true
        }
        var visited = [[Int]: Bool]()
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                visited[[i, j]] = true
                if board[i][j] == w[0] && search(board, w, 0, i, j, &visited) {
                    return true
                }
                visited[[i, j]] = false
            }
        }
        return false
    }

    private func search(_ board: [[Character]],_ w: [Character],_ wIndex: Int,_ i: Int,_ j: Int,_ visited: inout [[Int]: Bool]) -> Bool {
        guard wIndex < (w.count - 1) else {
            return true
        }
        let deltas = [(-1, 0), (0, -1), (1, 0), (0, 1)]
        for delta in deltas {
            let nextI = i + delta.0
            let nextJ = j + delta.1
            guard nextI >= 0 && nextJ >= 0 && nextI < board.count && nextJ < board[0].count else {
                continue
            }
            guard w[wIndex + 1] == board[nextI][nextJ] else {
                continue
            }
            if let val = visited[[nextI, nextJ]], val == true {
                continue
            }
            visited[[nextI, nextJ]] = true
            let ans = search(board, w, wIndex + 1, nextI, nextJ, &visited)
            visited[[nextI, nextJ]] = false
            if ans == true {
                return true
            }
        }
        return false
    }
}
