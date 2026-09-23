class Solution {
    var cachedPaths = [[Int]: Int]()
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        guard m >= 1 && n >= 1 else {
            return 0
        }
        if m == 1 && n == 1 {
            return 1
        } else if let cached = cachedPaths[[m, n]] {
           return cached
        }
        let val = uniquePaths(m - 1, n) + uniquePaths(m, n - 1)
        cachedPaths[[m, n]] = val
        return val
    }
}
