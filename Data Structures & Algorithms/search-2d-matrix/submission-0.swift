class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var low = 0
        var hi = matrix.count - 1
        while low <= hi {
            let mid = low + (hi - low) / 2
            if matrix[mid][0] == target {
                return true
            } else if matrix[mid][0] < target {
                low = mid + 1
            } else {
                hi = mid - 1
            }
        }
        guard hi >= 0 else {
            return false
        }
        let selectedRow = hi
        low = 0
        hi = matrix[selectedRow].count - 1
        while low <= hi {
            let mid = low + (hi - low) / 2
            if matrix[selectedRow][mid] == target {
                return true
            } else if matrix[selectedRow][mid] < target {
                low = mid + 1
            } else {
                hi = mid - 1
            }
        }
        return false
    }
}
