class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        let count = nums.count
        var ans = Array(repeating: 0, count: 2 * count)
        for i in 0..<count {
            ans[i] = nums[i]
            ans[i + count] = nums[i]
        }
        return ans
    }
}
