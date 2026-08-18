class Solution {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        var trustedBy = [Int](repeating: 0, count: n + 1)
        var trusts = [Int](repeating: 0, count: n + 1)
        for pair in trust {
            trustedBy[pair[1]] += 1
            trusts[pair[0]] += 1
        }
        for i in 1...n {
            if trusts[i] == 0 && trustedBy[i] >= (n - 1) {
                return i
            }
        }
        return -1
    }
}
