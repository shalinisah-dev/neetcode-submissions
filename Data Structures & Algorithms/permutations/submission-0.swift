class Solution {
    private var overallResults = [[Int]]()
    func permute(_ nums: [Int]) -> [[Int]] {
        overallResults = [[Int]]()
        var res = [Int]()
        buildPerms(nums, 0, &res)
        return overallResults
    }

    private func buildPerms(_ nums: [Int],_ mask: Int,_ res: inout [Int]) {
        if mask == ((1<<nums.count) - 1) {
            overallResults.append(res)
        }
        for (i, num) in nums.enumerated() {
            if (mask & (1<<i)) == 0 {
                res.append(num)
                buildPerms(nums, mask | (1<<i), &res)
                res.removeLast()
            }
        }
    }
}
