class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var hash = [Int](repeating: 0, count: 26)
        for ch in s {
            hash[Int(ch.asciiValue!) - 97] += 1
        }
        for ch in t {
            hash[Int(ch.asciiValue!) - 97] -= 1
        }
        for i in 0..<26 {
            if hash[i] != 0 {
                return false
            }
        }
        return true
    }
}
