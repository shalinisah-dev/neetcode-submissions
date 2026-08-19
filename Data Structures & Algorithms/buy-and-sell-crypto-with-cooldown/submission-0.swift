class Solution {
    var hashedProfits = [Int: Int]()
    
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count <= 1 {
            return 0
        }
        return maxProfit(prices, 0)
    }
    
    private func maxProfit(_ prices: [Int],_ index: Int) -> Int {
        if index >= prices.count {
            return 0
        } else if let profits = hashedProfits[index] {
            return profits
        }
        var maxVal = maxProfit(prices, index + 1) // leave this one
        var sell = prices[index] // buy this one
        for i in (index + 1)..<prices.count {
            if prices[i] > sell {
                maxVal = max(maxVal, maxProfit(prices, i + 2) + prices[i] - sell)
            }
        }
        hashedProfits[index] = maxVal
        return maxVal
    }
}
