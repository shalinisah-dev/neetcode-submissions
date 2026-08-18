class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var i = 0
        var j = nums.count - 1
        while i <= j {
            let mid = i + (j - i) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                i = mid + 1
            } else {
                j = mid - 1
            }
        }
        return -1
    }
}
