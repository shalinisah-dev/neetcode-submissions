class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 0 else {
            return 0
        }
        var profit = 0
        var maxTillNow = prices[prices.count - 1]
        for i in stride(from: prices.count - 2, through: 0, by: -1) {
            maxTillNow = max(maxTillNow, prices[i])
            profit = max(profit, maxTillNow - prices[i])
        }
        return profit
    }
}
