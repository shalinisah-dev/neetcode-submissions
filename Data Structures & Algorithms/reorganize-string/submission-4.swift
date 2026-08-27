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
            var chosen: Character?

            for (ch, count) in sortedMap {
                if ch == last {
                    continue
                }

                chosen = ch

                if count == 1 {
                    map.removeValue(forKey: ch)
                } else {
                    map[ch] = count - 1
                }

                break
            }

            // Every remaining character equals `last`, so it's impossible.
            guard let chosen else {
                return ""
            }

            ans.append(chosen)
            last = chosen
        }

        return ans
    }
}