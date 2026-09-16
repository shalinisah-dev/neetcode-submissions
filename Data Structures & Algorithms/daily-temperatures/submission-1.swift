class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        let n = temperatures.count
        var results = [Int](repeating: 0, count: n)
        for i in (0..<(n-1)).reversed() {
            var candidate = i + 1
            while temperatures[candidate] <= temperatures[i] {
                if results[candidate] == 0 {
                    candidate = i
                    break
                }
                candidate += results[candidate]
            }
            results[i] = candidate - i
        }
        return results
    }
}