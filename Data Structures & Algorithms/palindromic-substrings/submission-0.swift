class Solution {
    func countSubstrings(_ s: String) -> Int {
        let charArray = Array(s)
        var isPalin = [[Bool]](repeating: [Bool](repeating: false, count: charArray.count), count: charArray.count)
        var count = 0
        for i in (0..<charArray.count).reversed() {
            for j in i..<charArray.count {
                if charArray[i] == charArray[j] {
                    var palin = true
                    if (i + 1) <= (j - 1) && ((i + 1 < charArray.count) && (j - 1 >= 0)) {
                        palin = isPalin[i + 1][j - 1]
                    }
                    isPalin[i][j] = palin
                    if palin {
                        count += 1
                    }
                }
            }
        }
        return count
    }
}
