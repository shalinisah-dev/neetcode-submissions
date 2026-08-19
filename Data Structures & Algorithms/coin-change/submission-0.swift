class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        if amount == 0 {
            return 0
        }
        var coinCount = [Int: Int]()
        for coin in coins {
            coinCount[coin] = 1
        }
        for i in 1...amount {
            if let _ = coinCount[i] {
                continue
            }
            var val = Int.max
            for coin in coins {
                if (i - coin) < 0 || coinCount[i-coin] == Int.max {
                    continue
                }
                val = min(val, coinCount[i-coin]! + 1)
            }
            coinCount[i] = val
        }
        let val = coinCount[amount]!
        if val == Int.max {
            return -1
        }
        return val
    }
}
