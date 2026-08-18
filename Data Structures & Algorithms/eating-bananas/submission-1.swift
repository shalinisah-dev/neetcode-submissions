class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        guard piles.count > 0 else {
            return 0
        }
        var minBananas = 1
        var maxBananas = piles.first!
        for pile in piles {
            minBananas = min(minBananas, pile)
            maxBananas = max(maxBananas, pile)
        }
        while minBananas < maxBananas {
            let curPile = minBananas + (maxBananas - minBananas) / 2 
            var tries = 0
            for pile in piles {
                tries = tries + (pile / curPile)
                if pile % curPile != 0 {
                    tries = tries + 1
                }
            }
            if tries <= h { // works
                maxBananas = curPile
            } else {
                minBananas = curPile + 1
            }
        }
        return minBananas;
    }
}
