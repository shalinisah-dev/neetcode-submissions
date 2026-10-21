class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var hash = Set<Int>()
        for num in nums {
            guard !hash.contains(num) else {
                return true
            }
            hash.insert(num)
        }
        return false
    }
}
