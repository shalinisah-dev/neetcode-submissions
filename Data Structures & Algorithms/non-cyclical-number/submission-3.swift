class Solution {
    func isHappy(_ n: Int) -> Bool {
        var seenMap = [Int](repeating: 0, count: 1001)
        var n = n
        while n != 1 && seenMap[n] == 0 {
            seenMap[n] = 1
            n = process(n)
        }
        return n == 1
    }

    private func process(_ n: Int) -> Int {
        var val = 0
        var n = n
        while n > 0 {
            let digit = n % 10
            val += (digit * digit)
            n /= 10
        }
        return val
    }
}
