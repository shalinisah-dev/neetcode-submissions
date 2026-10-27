class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        let dot = Character(".")
        var row = [Int](repeating: 0, count: board.count)
        var col = [Int](repeating: 0, count: board[0].count)
        var sq = [Int](repeating: 0, count: board.count)
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                guard board[i][j] != dot else {
                    continue
                }
                guard let digit = board[i][j].wholeNumberValue else {
                    continue
                }
                if contains(row[i], digit) {
                    return false
                }
                row[i] |= (1<<digit)
                if contains(col[j], digit) {
                    return false
                }
                col[j] |= (1<<digit)
                let sqVal = (i / 3) * 3 + (j / 3)
                if contains(sq[sqVal], digit) {
                    return false
                }
                sq[sqVal] |= (1<<digit)
            }
        }
        return true
    }

    private func contains(_ val: Int,_ digit: Int) -> Bool {
        if (val & (1<<digit)) != 0 {
            return true
        }
        return false
    }
}
