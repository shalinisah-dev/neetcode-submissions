class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var maxWater = 0
        var i = 0
        var j = heights.count - 1
        while i < j {
            if heights[i] < heights[j] {
                maxWater = max(maxWater, heights[i] * (j-i))
                i = i + 1
            } else {
                maxWater = max(maxWater, heights[j] * (j-i))
                j = j - 1
            }
        }
        return maxWater
    }
}
