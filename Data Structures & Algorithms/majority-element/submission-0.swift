class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var candidate = nums.first!
        var res = 0
        for num in nums {
            if num == candidate {
                res = res + 1
            } else {
                res = res - 1
            }
            if res < 0 {
                candidate = num
            }
        }
        return candidate
    }
}
