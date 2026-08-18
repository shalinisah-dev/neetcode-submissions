class Solution {
    var ways = [Int](repeating: 0, count: 50)
    func climbStairs(_ n: Int) -> Int {
        if n == 0 || n == 1 {
            return 1
        }
        if (ways[n] != 0) {
            return ways[n]
        }
        ways[n] = climbStairs(n - 1) + climbStairs(n - 2)
        return ways[n]
    }
}
