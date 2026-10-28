class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var start = s.startIndex
        var end = s.index(before: s.endIndex)
        while start < end {
            let sCh = s[start]
            let eCh = s[end]
            if !(sCh.isLetter || sCh.isNumber) {
                start = s.index(after: start)
                continue
            }
            if !(eCh.isLetter || eCh.isNumber) {
                end = s.index(before: end)
                continue
            }
            if sCh.lowercased() != eCh.lowercased() {
                return false
            }
            start = s.index(after: start)
            end = s.index(before: end)
        }
        return true
    }
}
