class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        var s1Map = [Character: Int]()
        for char in s1 {
            s1Map[char, default: 0] += 1
        }
        var s2Map = [Character: Int]()
        let slidingWindowLen = s1.length
        var startIndex = 0
        let s2Chars = Array(s2)
        for index in s2Chars.indices {
            let char = s2Chars[index]
            let curLen = index - startIndex + 1
            s2Map[char, default: 0] += 1
            if curLen > slidingWindowLen {
                s2Map[s2Chars[startIndex], default: 0] -= 1
                startIndex += 1
            }
            s1Map = s1Map.filter { $0.value != 0 }
            s2Map = s2Map.filter { $0.value != 0 }
            if s1Map == s2Map {
                return true
            }
        }
        return false
    }
}
