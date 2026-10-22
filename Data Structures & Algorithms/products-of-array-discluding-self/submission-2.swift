class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var pre = [Int](repeating: 0, count: nums.count)
        var suf = [Int](repeating: 0, count: nums.count)
        pre[0] = nums[0]
        for i in 1..<nums.count {
            pre[i] = pre[i - 1] * nums[i]
        }
        suf[nums.count - 1] = nums[nums.count - 1] 
        for i in stride(from: nums.count - 2, through: 0, by: -1) {
            suf[i] = suf[i + 1] * nums[i]
        }
        var prod = [Int]()
        for i in 0..<nums.count {
            var ans = 1
            if i - 1 >= 0 {
                ans *= pre[i - 1]
            }
            if i + 1 < nums.count {
                ans *= suf[i + 1]
            }
            prod.append(ans)
        }
        return prod
    }
}
