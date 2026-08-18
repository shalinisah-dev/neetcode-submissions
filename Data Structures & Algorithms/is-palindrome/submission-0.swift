class Solution {
    func isPalindrome(_ s: String) -> Bool {
        guard !s.isEmpty else {
            return true
        }

        var left = s.startIndex
        var right = s.index(before: s.endIndex)

        while left < right {
            let leftChar = s[left]
            let rightChar = s[right]

            if !leftChar.isLetter && !leftChar.isNumber {
                left = s.index(after: left)
                continue
            }

            if !rightChar.isLetter && !rightChar.isNumber {
                right = s.index(before: right)
                continue
            }

            if leftChar.lowercased() != rightChar.lowercased() {
                return false
            }

            left = s.index(after: left)
            right = s.index(before: right)
        }

        return true
    }
}