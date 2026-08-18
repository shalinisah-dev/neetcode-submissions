class Solution {
    func romanToInt(_ s: String) -> Int {
        var val: Int = 0
        var last = 1000
        for ch in s {
            var digit = 1
            if ch == Character("V") { 
                digit = 5
            } else if ch == Character("X") {
                digit = 10
            } else if ch == Character("L") {
                digit = 50
            } else if ch == Character("C") {
                digit = 100
            } else if ch == Character("D") {
                digit = 500
            } else if ch == Character("M") {
                digit = 1000
            }
            if last < digit {
                val -= last
                digit -= last
                val += digit
            } else {
                val = val + digit
            }
            last = digit
        }
        return val
    }
}
