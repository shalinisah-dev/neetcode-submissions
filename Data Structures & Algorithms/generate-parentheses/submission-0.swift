class Solution {
    var results = [String]()
    func generateParenthesis(_ n: Int) -> [String] {
        results = [String]()
        var str: String = ""
        combinations(0, 0, n, &str)
        return results
    }

    func combinations(_ startCount: Int,_ closeCount: Int,_ left: Int,_ str: inout String) {
        guard left > 0 else {
            if startCount != closeCount {
                var ans = str
                var closeCount = closeCount
                while closeCount < startCount {
                    ans += ")"
                    closeCount += 1
                }
                results.append(ans)
            }
            return
        }
    
        if startCount == closeCount {
            str.append("(")
            combinations(startCount + 1, closeCount, left - 1, &str)
            str.removeLast()
        } else {
            str.append("(")
            combinations(startCount + 1, closeCount, left - 1, &str)
            str.removeLast()
            str.append(")")
            combinations(startCount, closeCount + 1, left, &str)
            str.removeLast()
        }
    }
}
