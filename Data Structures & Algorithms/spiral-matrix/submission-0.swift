class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        guard !matrix.isEmpty, !matrix[0].isEmpty else {
            return []
        }

        var rowSteps = matrix[0].count
        var colSteps = matrix.count - 1
        var ans = [Int]()
        var firstRow = 0
        var firstCol = 0

        ans.reserveCapacity(matrix.count * matrix[0].count)

        while rowSteps > 0 && colSteps >= 0 {
            // Right
            for col in firstCol..<(firstCol + rowSteps) {
                ans.append(matrix[firstRow][col])
            }

            // Down
            if colSteps > 0 {
                let rightCol = firstCol + rowSteps - 1

                for row in (firstRow + 1)...(firstRow + colSteps) {
                    ans.append(matrix[row][rightCol])
                }
            }

            // Left
            if colSteps > 0 && rowSteps > 1 {
                let bottomRow = firstRow + colSteps
                let startCol = firstCol + rowSteps - 2

                for col in stride(from: startCol, through: firstCol, by: -1) {
                    ans.append(matrix[bottomRow][col])
                }
            }

            // Up
            if colSteps > 1 && rowSteps > 1 {
                let startRow = firstRow + colSteps - 1

                for row in stride(from: startRow, through: firstRow + 1, by: -1) {
                    ans.append(matrix[row][firstCol])
                }
            }

            // Move to the inner layer
            firstRow += 1
            firstCol += 1
            rowSteps -= 2
            colSteps -= 2
        }

        return ans
    }
}