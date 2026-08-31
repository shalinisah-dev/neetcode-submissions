class Solution {
    func combinationSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var ans = [Int]()
        return combinationSumHelper(nums, target, 0, &ans)
    }

    func combinationSumHelper(_ nums: [Int],_ target: Int,_ index: Int, _ ans: inout [Int]) -> [[Int]] {
        if target == 0 {
            return [ans]
        } else if index == nums.count {
            return [[Int]]()
        }
        var res = [[Int]]()
        if target - nums[index] >= 0 {
            ans.append(nums[index])
            var includeNumResults = combinationSumHelper(nums, target - nums[index], index, &ans)
            includeNumResults.filter { !$0.isEmpty }
            res.append(contentsOf: includeNumResults)
            ans.removeLast()
        }
        var excludeNumResults = combinationSumHelper(nums, target, index + 1, &ans)
        excludeNumResults.filter { !$0.isEmpty }
        res.append(contentsOf: excludeNumResults)
        return res
    }
}
