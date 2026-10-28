class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var i = 0
        var j = numbers.count - 1
        while i < j {
            let curSum = numbers[i] + numbers[j]
            if curSum > target {
                j -= 1
            } else if curSum < target {
                i += 1
            } else {
                return [i + 1, j + 1]
            }
        }
        return [-1, -1]
    }
}
