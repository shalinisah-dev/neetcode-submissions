class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hash = [Int: Int]()
        for (i, num) in nums.enumerated() {
            guard let j = hash[target - num] else {
                hash[num] = i
                continue
            }
            return [j, i]
        }
        return []
    }
}
