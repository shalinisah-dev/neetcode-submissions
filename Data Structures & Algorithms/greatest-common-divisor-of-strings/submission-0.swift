class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        func gcd(_ a: Int, _ b: Int) -> Int {
            return b == 0 ? a : gcd(b, a % b)
        }

        let g = gcd(str1.count, str2.count)
        let pattern = str1.prefix(g)   // Substring: O(1) extra space

        func isMadeOfPattern(_ str: String) -> Bool {
            var p = pattern.startIndex

            for char in str {
                if char != pattern[p] {
                    return false
                }

                p = pattern.index(after: p)

                if p == pattern.endIndex {
                    p = pattern.startIndex
                }
            }

            return true
        }

        guard isMadeOfPattern(str1),
              isMadeOfPattern(str2) else {
            return ""
        }

        return String(pattern)
    }
}