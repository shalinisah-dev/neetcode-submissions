class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var count = [Int: Int]()
        for num in nums {
            count[num, default: 0] += 1
        }
        var freq = [[Int]](repeating:[Int](), count: nums.count + 1)
        for (key, val) in count {
            freq[val].append(key)
        }
        var ans = [Int]()
        var mx = k
        for i in stride(from: nums.count, through: 1, by: -1) {
            guard mx > 0 else {
                break
            }
            for j in 0..<freq[i].count {
                guard mx > 0 else {
                    break
                }
                mx -= 1
                ans.append(freq[i][j])
            }
        }
        return ans
    }
}
