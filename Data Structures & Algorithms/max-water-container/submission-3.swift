class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var i = 0
        var j = heights.count - 1
        var ans = 0
        while i < j {
            ans = max(ans, min(heights[i], heights[j]) * (j - i))
            if heights[i] < heights[j] {
                i += 1
            } else {
                j -= 1
            }
        }
        return ans
    }
}
