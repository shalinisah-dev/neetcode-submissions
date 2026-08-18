class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s.lowercased())

        var i = 0
        var j = chars.count - 1

        while i < j {
            if !isAlphanumeric(chars[i]) {
                i += 1
                continue
            }

            if !isAlphanumeric(chars[j]) {
                j -= 1
                continue
            }

            if chars[i] != chars[j] {
                return false
            }

            i += 1
            j -= 1
        }

        return true
    }

    func isAlphanumeric(_ ch: Character) -> Bool {
        return ("a"..."z").contains(ch) ||
               ("0"..."9").contains(ch)
    }
}