class Solution {
    func sortColors(_ nums: inout [Int]) {
        var start = 0
        var end = nums.count - 1
        var i = 0
        while i <= end {
            if nums[i] == 0 {
                nums.swapAt(i, start)
                start += 1
                i += 1
            } else if nums[i] == 2 {
                nums.swapAt(i, end)
                end -= 1
            } else {
                i += 1
            }
        }
    }
}