class Solution {
    var ways = [Int](repeating: 0, count: 50)
    func climbStairs(_ n: Int) -> Int {
        ways[0] = 1
        ways[1] = 1
        if ways[n] != 0 {
            return ways[n]
        }
        for i in 2...n {
            ways[i] = ways[i - 1] + ways[i - 2]
        }
        return ways[n]
    }
}
