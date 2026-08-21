// 9:36pm
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var lo = 0
        var hi = nums.count - 1
        while lo < hi {
            let mid = (lo + hi) / 2
            if nums[mid] >= nums[0] {
                lo = mid + 1
            } else {
                hi = mid
            }
        }
        var ans = binSearch(nums, 0, hi - 1, target)
        if ans != -1 {
            return ans
        }
        ans = binSearch(nums, hi, nums.count - 1, target)
        return ans
    }

    private func binSearch(_ nums: [Int],_ i: Int, _ j: Int,_ target: Int) -> Int {
        guard i >= 0 && i <= j else {
            return -1
        }
        var lo = i
        var hi = j
        while lo <= hi {
            let mid = (lo + hi) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                hi = mid - 1
            } else {
                lo = mid + 1
            }
        }
        return -1
    }
}
