class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows = Array(repeating: Set<Character>(), count: 9)
        var columns = Array(repeating: Set<Character>(), count: 9)
        var boxes = Array(repeating: Set<Character>(), count: 9)

        for (row, values) in board.enumerated() {
            for (column, value) in values.enumerated() where value != "." {
                let box = (row / 3) * 3 + column / 3

                guard rows[row].insert(value).inserted,
                      columns[column].insert(value).inserted,
                      boxes[box].insert(value).inserted else {
                    return false
                }
            }
        }

        return true
    }
}