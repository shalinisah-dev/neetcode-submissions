class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var lo = 0
        var hi = nums.count - 1
        while lo < hi {
            let mid = lo + (hi - lo) / 2
            if nums[mid] < nums[hi] {
                hi = mid
            } else {
                lo = mid + 1
            }
        }
        return nums[lo]
    }
}
