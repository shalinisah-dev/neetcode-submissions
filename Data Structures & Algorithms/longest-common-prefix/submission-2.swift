class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 1 {
            return strs[0]
        }
        guard let minimum = strs.min(),
              let maximum = strs.max() else {
            return ""
        }

        let first = Array(minimum)
        let last = Array(maximum)

        var i = 0
        var ans = ""

        while i < min(first.count, last.count),
              first[i] == last[i] {
            ans.append(first[i])
            i += 1
        }

        return ans
    }
}