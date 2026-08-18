class Solution {
    func countBits(_ n: Int) -> [Int] {
        var ans = [Int](repeating: 0, count: n + 1)
        if n == 0 {
            return ans
        }
        ans[1] = 1
        if n == 1 {
            return ans
        }
        for i in 2...n {
            ans[i] = ans[i >> 1] + (i & 1)
        }
        return ans
    }
}

// 0, 1, 10, 11, 100, 101, 110, 111, 1000, 1001, 1010, 1011,
// 0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 