class Solution {
    var seenMap = [Int: Bool]()
    func isHappy(_ n: Int) -> Bool {
        if n == 1 {
            return true
        }
        if seenMap[n] != nil {
            return false
        }
        seenMap[n] = true
        var val = 0
        var n = n
        while n > 0 {
            val = val + (n % 10) * (n % 10)
            n /= 10
        }
        return isHappy(val)
    }
}
