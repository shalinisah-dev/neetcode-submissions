class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var hash = [Int: Int]()
        for num in nums {
            hash[num, default: 0] = 1
        }
        var mx = 0
        for num in nums {
            if let val = hash[num], val > 1 {
                continue
            }
            var next = num + 1
            var ans = 1
            while let val = hash[next], val > 0 {
                ans += val
                if val > 1 {
                    break
                }
                next += 1
            }
            hash[num] = ans
            mx = max(mx, ans)
        }
        return mx
    }
}

// hash it
// next loop keep doing +1 till you find it in the hash and record it 
// then move to the next element if value greater than 1 exists, no need to do +1 otherwise repeat.