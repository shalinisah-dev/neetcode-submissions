class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var existMap = [Int: Int]()
        for (i, num) in nums.enumerated() {
            if let existingNum = existMap[target - num] {
                return [existingNum, i]
            }
            existMap[num] = i
        }
        return [Int]()
    }
}
