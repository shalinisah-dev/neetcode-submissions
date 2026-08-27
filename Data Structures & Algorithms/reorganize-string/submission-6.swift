class Solution {
    func reorganizeString(_ s: String) -> String {
        var map = [Character: Int]()

        for char in s {
            map[char, default: 0] += 1
        }

        var ans = ""
        var last: Character?

        while !map.isEmpty {
            let sortedMap = map.sorted { $0.value > $1.value }
            var found = false

            for (ch, count) in sortedMap {
                if ch == last {
                    continue
                }

                ans.append(ch)
                last = ch
                found = true

                if count == 1 {
                    map.removeValue(forKey: ch)
                } else {
                    map[ch] = count - 1
                }

                break
            }

            if !found {
                return ""
            }
        }

        return ans
    }
}