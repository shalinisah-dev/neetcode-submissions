class NumMatrix {
    var prefixSumMatrix: [[Int]]
    init(_ matrix: [[Int]]) {
        prefixSumMatrix = [[Int]](repeating: [Int](repeating: 0, count: matrix[0].count), count: matrix.count)
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                prefixSumMatrix[i][j] = matrix[i][j]
                var used = 0
                if (i - 1) >= 0 {
                    prefixSumMatrix[i][j] += prefixSumMatrix[i - 1][j]
                    used += 1
                }
                if (j - 1) >= 0 {
                    prefixSumMatrix[i][j] += prefixSumMatrix[i][j - 1]
                    used += 1
                }
                if ((i - 1) >= 0) && ((j - 1) >= 0) && used == 2 {
                    prefixSumMatrix[i][j] -= prefixSumMatrix[i - 1][j - 1]
                }
            }
        }
    }

    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        var sum = prefixSumMatrix[row2][col2]
        var used = 0
        if (row1 - 1) >= 0 {
            sum -= prefixSumMatrix[row1 - 1][col2]
            used += 1
        }
        if (col1 - 1) >= 0 {
            sum -= prefixSumMatrix[row2][col1 - 1]
            used += 1
        }
        if used == 2 {
            if (row1 - 1) >= 0 && (col1 - 1) >= 0 {
                sum += prefixSumMatrix[row1 - 1][col1 - 1]
            }
        }
        return sum
    }
}

/**
 * Your NumMatrix object will be instantiated and called as such:
 * let obj = NumMatrix(matrix)
 * let ret_1: Int = obj.sumRegion(row1, col1, row2, col2)
 */
