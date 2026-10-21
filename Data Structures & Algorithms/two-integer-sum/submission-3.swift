class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hash = [Int: Int]()
        for i in 0..<nums.count {
            guard hash[target - nums[i]] == nil else {
                return [hash[target - nums[i]]!, i]
            }
            hash[nums[i]] = i
        }
        return [-1, -1] // invalid
    }
}
