class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var map = [Character: Int]()
        var maxlen = 0
        var runningLength = 0
        var windowStart = 0
        for (index, char) in s.enumerated() {
            if let previousIndex = map[char] /** repeats */, previousIndex >= windowStart {
                maxlen = max(maxlen, runningLength)
                runningLength = index - previousIndex
                windowStart = previousIndex + 1
            } else {
                runningLength += 1
            }
            map[char] = index
        }
        maxlen = max(maxlen, runningLength)
        return maxlen
    }
}
