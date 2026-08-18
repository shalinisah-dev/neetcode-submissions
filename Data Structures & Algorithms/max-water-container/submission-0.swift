class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var maxWater = 0
        for i in 0..<heights.count {
            for j in i+1..<heights.count {
                let smallerHeight = min(heights[i], heights[j])
                maxWater = max(maxWater, smallerHeight * (j - i))
            }
        }
        return maxWater
    }
}
