class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var first = strs[0]
        for str in strs {
            var next: String = ""
            for (c1, c2) in zip(first, str) {
                if c1 != c2 {
                    break
                }
                next.append(c1)
            }
            first = next
        }
        return first
    }
}
