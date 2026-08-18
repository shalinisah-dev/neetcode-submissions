class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }

        var counts = [Int](repeating: 0, count: 26)
        let aValue = Character("a").asciiValue!

        for char in s {
            guard let ascii = char.asciiValue else {
                return false
            }

            let index = Int(ascii - aValue)
            counts[index] += 1
        }

        for char in t {
            guard let ascii = char.asciiValue else {
                return false
            }

            let index = Int(ascii - aValue)
            counts[index] -= 1
        }

        for count in counts {
            if count != 0 {
                return false
            }
        }

        return true
    }
}