class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var xorVal = 0
        for i in 0..<nums.count {
            xorVal^=i
            xorVal^=nums[i]
        }
        xorVal^=nums.count
        return xorVal
    }
}
