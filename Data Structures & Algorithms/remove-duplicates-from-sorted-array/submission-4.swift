class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var i = 1
        var k = i
        while i < nums.count {
            if nums[i] != nums[i-1] {
                nums[k] = nums[i]
                k += 1
            }
            i += 1
        }
        return k
    }
}
