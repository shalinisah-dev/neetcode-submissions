class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        guard !s.isEmpty, !t.isEmpty, t.count <= s.count else {
            return ""
        }

        let chars = Array(s)

        var need = [Character: Int]()
        for char in t {
            need[char, default: 0] += 1
        }

        var window = [Character: Int]()
        var formed = 0
        let required = need.count

        var left = 0
        var bestStart = 0
        var bestLength = Int.max

        for right in chars.indices {
            let rightChar = chars[right]
            window[rightChar, default: 0] += 1

            if let requiredCount = need[rightChar],
               window[rightChar] == requiredCount {
                formed += 1
            }

            while formed == required {
                let currentLength = right - left + 1

                if currentLength < bestLength {
                    bestLength = currentLength
                    bestStart = left
                }

                let leftChar = chars[left]
                window[leftChar, default: 0] -= 1

                if let requiredCount = need[leftChar],
                   window[leftChar, default: 0] < requiredCount {
                    formed -= 1
                }

                left += 1
            }
        }

        guard bestLength != Int.max else {
            return ""
        }

        return String(chars[bestStart..<(bestStart + bestLength)])
    }
}