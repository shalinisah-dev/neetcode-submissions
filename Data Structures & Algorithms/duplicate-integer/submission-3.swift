class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var hash = [Int: Bool]()
        for num in nums {
            guard hash[num] == nil else {
                return true
            }
            hash[num] = true
        }
        return false
    }
}
