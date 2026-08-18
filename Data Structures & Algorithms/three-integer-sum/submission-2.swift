class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count >= 3 else {
            return []
        }

        let nums = nums.sorted()
        var result: [[Int]] = []

        for i in 0..<(nums.count - 2) {
            // Skip duplicate first values.
            if i > 0 && nums[i] == nums[i - 1] {
                continue
            }

            // Since the array is sorted, no later triplet can sum to zero.
            if nums[i] > 0 {
                break
            }

            var left = i + 1
            var right = nums.count - 1

            while left < right {
                let sum = nums[i] + nums[left] + nums[right]

                if sum == 0 {
                    result.append([nums[i], nums[left], nums[right]])

                    left += 1
                    right -= 1

                    // Skip duplicate second values.
                    while left < right && nums[left] == nums[left - 1] {
                        left += 1
                    }

                    // Skip duplicate third values.
                    while left < right && nums[right] == nums[right + 1] {
                        right -= 1
                    }
                } else if sum < 0 {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }

        return result
    }
}