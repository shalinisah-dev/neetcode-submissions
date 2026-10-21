class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var hash = [Character: Int]()
        for ch in s {
            hash[ch, default: 0] += 1
        }
        for ch in t {
            hash[ch, default: 0] -= 1
            if hash[ch] == 0 {
                hash.removeValue(forKey: ch)
            }
        }
        return hash.isEmpty
    }
}
