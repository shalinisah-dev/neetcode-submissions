class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        guard !nums.isEmpty else {
            return [[Int]()]
        }
        var arr = nums
        let last = arr.removeLast()
        let combos = subsets(arr)
        var ansCombos = [[Int]]()
        for perm in combos {
            ansCombos.append(perm)
            var permUpdate = perm
            permUpdate.append(last)
            ansCombos.append(permUpdate)
        }
        return ansCombos
    }
}
