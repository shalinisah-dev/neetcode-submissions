class Solution {
    func reverseBits(_ n: Int) -> Int {
        var m = 0
        var n = n
        for i in 0..<32 {
            m <<= 1
            m |= (n & 1)
            n >>= 1
        }
        return m
    }
}
