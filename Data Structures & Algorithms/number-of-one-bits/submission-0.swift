class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var count = 0
        var n = n
        while n > 0 {
            if n % 2 == 1 {
                count += 1
            }
            n /= 2
        }
        return count
    }
}
