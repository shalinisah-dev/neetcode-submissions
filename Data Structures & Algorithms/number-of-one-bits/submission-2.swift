class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var n = n
        var ans = 0
        while n > 0 {
            ans += (n & 1)
            n>>=1
        }
        return ans
    }
}
