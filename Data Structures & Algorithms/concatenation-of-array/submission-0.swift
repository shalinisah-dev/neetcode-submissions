class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var ans = [Int]()
        ans.reserveCapacity(2 * nums.count)
        for num in nums {
            ans.append(num)
        }
        for num in nums {
            ans.append(num)
        }
        return ans
    }
}
