class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var frequencies: [Int: Int] = [:]

        for number in nums {
            frequencies[number, default: 0] += 1
        }

        var result = Set<[Int]>()

        for i in 0..<nums.count {
            for j in (i + 1)..<nums.count {
                let first = nums[i]
                let second = nums[j]
                let third = -(first + second)

                guard let thirdCount = frequencies[third] else {
                    continue
                }

                // Determine how many times `third` is already used
                // by first and second.
                var requiredCount = 1

                if third == first {
                    requiredCount += 1
                }

                if third == second {
                    requiredCount += 1
                }

                guard thirdCount >= requiredCount else {
                    continue
                }

                result.insert([first, second, third].sorted())
            }
        }

        return Array(result)
    }
}