class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let set = Set(nums)
        var mx = 0

        for num in set {
            if !set.contains(num - 1) {
                var next = num
                var ans = 0

                while set.contains(next) {
                    ans += 1
                    next += 1
                }

                mx = max(mx, ans)
            }
        }

        return mx
    }
}