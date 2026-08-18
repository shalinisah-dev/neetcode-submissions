class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n == 1 {
            return 1
        }

        if n == 2 {
            return 2
        }

        var waysToReachPrev = 2
        var waysToReachPrevToPrev = 1
        for i in 3...n {
            let temp = waysToReachPrev + waysToReachPrevToPrev
            waysToReachPrevToPrev = waysToReachPrev
            waysToReachPrev = temp
        }

        return waysToReachPrev
    }
}
