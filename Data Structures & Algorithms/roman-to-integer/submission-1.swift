class Solution {
    func romanToInt(_ s: String) -> Int {
        var last = 1000
        var mapSet: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        var val = 0
        for ch in s {
            let cur = mapSet[ch]!
            if last < cur {
                val -= last
                val += (cur - last)
            } else {
                val += cur
            }
            last = cur
        }
        return val
    }
}
