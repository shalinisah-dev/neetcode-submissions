class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var indexMap: [Int: [Int]] = [:]

        for (index, number) in nums.enumerated() {
            indexMap[number, default: []].append(index)
        }

        var result = Set<[Int]>()

        for i in 0..<nums.count {
            for j in 0..<nums.count {
                let target = -(nums[i] + nums[j])

                guard let indices = indexMap[target] else {
                    continue
                }

                for k in indices where k != i && k != j && i != j {
                    result.insert([nums[i], nums[j], nums[k]].sorted())
                }
            }
        }

        return Array(result)
    }
}