class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard var prefix = strs.first else {
            return ""
        }

        for str in strs.dropFirst() {
            while !str.hasPrefix(prefix) {
                prefix.removeLast()

                if prefix.isEmpty {
                    return ""
                }
            }
        }

        return prefix
    }
}