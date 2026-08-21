// 7:42pm
// 7:54pm
class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = [Int]()
        var ans = [Int](repeating: 0, count: temperatures.count)
        for (i, temp) in temperatures.enumerated() {
            while !stack.isEmpty && temperatures[stack.last!] < temp {
                ans[stack.last!] = (i - stack.last!)
                stack.removeLast()
            }
            if stack.isEmpty || temperatures[stack.last!] >= temp {
                stack.append(i)
            }
        }
        return ans
    }
}
