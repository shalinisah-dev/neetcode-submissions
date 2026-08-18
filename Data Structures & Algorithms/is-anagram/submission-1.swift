class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        var counts: [Character: Int] = [:]

        for character in s {
            counts[character, default: 0] += 1
        }

        for character in t {
            counts[character, default: 0] -= 1

            if counts[character] == 0 {
                counts.removeValue(forKey: character)
            }
        }

        return counts.isEmpty
    }
}