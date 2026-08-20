// 8:38pm
// 8:46pm -- brute force
// 
class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefixMult = [Int](repeating: 1, count: nums.count)
        var suffixMult = [Int](repeating: 1, count: nums.count)
        for i in 1..<nums.count {
            prefixMult[i] = prefixMult[i - 1] * nums[i - 1]
        }
        for i in stride(from: nums.count - 2, through: 0, by: -1) {
            suffixMult[i] = suffixMult[i + 1] * nums[i + 1]
        }
        var ans = [Int](repeating: 0, count: nums.count)
        for i in 0..<nums.count {
            ans[i] = prefixMult[i] * suffixMult[i]
        }
        return ans
    }
}
