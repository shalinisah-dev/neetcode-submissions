class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var sub = nums[nums.count - 1]
        var ans = sub
        for i in stride(from: nums.count - 2, through: 0, by: -1) {
            sub = max(nums[i], nums[i] + sub)
            ans = max(ans, sub)
        }
        return ans
    }
}


// sub[i] = max(nums[i], nums[i] + sub[i+1])
// ans = max(ans, sub[i])