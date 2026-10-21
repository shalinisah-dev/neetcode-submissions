class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var hash1 = [Character: Int]()
        var hash2 = [Character: Int]()
        for ch in s {
            hash1[ch, default: 0] += 1
        }
        for ch in t {
            hash2[ch, default: 0] += 1
        }
        return hash1 == hash2
    }
}
