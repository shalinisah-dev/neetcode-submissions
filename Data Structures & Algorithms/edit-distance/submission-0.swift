class Solution {
    private struct CacheKey: Hashable {
        let w1Index: Int
        let w2Index: Int
    }
    func minDistance(_ word1: String, _ word2: String) -> Int {
        let w1 = Array(word1)
        let w2 = Array(word2)
        var cache = [CacheKey: Int]()
        return minDistanceHelper(w1, w2, 0, 0, &cache)
    }

    private func minDistanceHelper(_ w1: [Character],_ w2: [Character],_ i: Int,_ j: Int,_ cache: inout [CacheKey: Int]) -> Int {
        // Base cases
        if j == w2.count {
            return w1.count - i    
        } else if i == w1.count {
            return w2.count - j
        }
        let cacheKey = CacheKey(w1Index: i, w2Index: j)
        if let val = cache[cacheKey] {
            return val
        }

        let replaceCost = (w1[i] == w2[j]) ? 0 : 1
        // make W1[i] = W2[j]
        var ans = minDistanceHelper(w1, w2, i + 1, j + 1, &cache) + replaceCost
        // dropped W1[i]
        ans = min(ans, minDistanceHelper(w1, w2, i + 1, j, &cache) + 1)
        // add W2[j]
        ans = min(ans, minDistanceHelper(w1, w2, i, j + 1, &cache) + 1)
        cache[cacheKey] = ans
        return ans
    }
}
