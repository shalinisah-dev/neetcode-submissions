// 8:38pm
// 
class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var total = 1
        var zeroes = 0
        for num in nums {
            if num != 0 {
                total *= num
            } else {
                zeroes += 1
            }
        }
        if zeroes > 1 {
            total = 0
        }
        var ans = [Int](repeating: 0, count: nums.count)
        for (i, num) in nums.enumerated() {
            if total == 0 || (num != 0 && zeroes > 0) {
                ans[i] = 0
            } else if num != 0 {
                ans[i] = total / num
            } else {
                ans[i] = total
            }
        }
        return ans
    }
}
