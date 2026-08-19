class Solution {
    func change(_ amount: Int, _ coins: [Int]) -> Int {
        var ways = [Int](repeating: 0, count: amount + 1)
        ways[0] = 1
        for coin in coins {
            for i in 0...amount {
                guard (i - coin) >= 0 else {
                    continue
                }
                ways[i] += ways[i - coin]
            }
        }
        return ways[amount]
    }
}
