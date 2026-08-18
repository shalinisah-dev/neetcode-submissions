class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var xorVal = 0
        for num in nums {
            xorVal ^= num
        }
        return xorVal
    }
}
