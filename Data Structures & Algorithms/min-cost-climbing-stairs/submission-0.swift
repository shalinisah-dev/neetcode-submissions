class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        let count = cost.count
        if count == 1 {
            return cost[0]
        }
        var last = cost[1]
        var secondLast = cost[0]
        for i in 2..<count {
            let curCost = cost[i] + min(last, secondLast)
            secondLast = last
            last = curCost
        }
        return min(last, secondLast)
    }
}
