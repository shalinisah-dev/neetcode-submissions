// Start time Sep 16
// N^2 brute force
// Slightly optimized 
// if next one is equal skip it
class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var last = 0
        var maxArea = 0
        for (i, height) in heights.enumerated() {
            guard last != height else {
                continue
            }
            last = height
            var j = i
            var sum = 0
            while j < heights.count && heights[j] >= heights[i] {
                sum += 1
                j += 1
            }
            j = i - 1
            while j >= 0 && heights[j] >= heights[i] {
                sum += 1
                j -= 1
            }
            maxArea = max(maxArea, sum * heights[i])
        }
        return maxArea
    }
}

// [5,1,5,3,3,1]


// 5, 6, 5, 9, 9, 6 