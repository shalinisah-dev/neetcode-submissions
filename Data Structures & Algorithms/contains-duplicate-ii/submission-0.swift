class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var numSet = Set<Int>()
        for (i, num) in nums.enumerated() {
            if numSet.contains(num) {
                return true
            }
            numSet.insert(num)
            if (i - k) >= 0 {
                numSet.remove(nums[i - k])
            }
        }
        return false
    }
}
