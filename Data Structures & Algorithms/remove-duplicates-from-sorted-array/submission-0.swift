class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var i = 0
        var j = 1
        var k = 1
        while j < nums.count {
            if nums[i] == nums[j] {
                j += 1
            } else {
                nums[k] = nums[j]
                i = j
                k += 1
                j += 1
            }
        }
        return k
    }
}
