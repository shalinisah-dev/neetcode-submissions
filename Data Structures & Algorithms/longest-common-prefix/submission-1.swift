class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let minimum = strs.min(),
              let maximum = strs.max() else {
            return ""
        }

        let first = Array(minimum)
        let last = Array(maximum)

        var i = 0

        while i < min(first.count, last.count),
              first[i] == last[i] {
            i += 1
        }

        return String(first[..<i])
    }
}