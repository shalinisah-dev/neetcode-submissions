class Solution {
    func subsetXORSum(_ nums: [Int]) -> Int {
        let maxSubsets = 1<<(nums.count)
        var sum = 0
        for i in 0..<maxSubsets {
            var subsetXor = 0
            for j in 0..<nums.count {
                if (i & (1<<j)) != 0 {
                    subsetXor ^= nums[j]
                }
            }
            sum += subsetXor
        }
        return sum
    }
}
