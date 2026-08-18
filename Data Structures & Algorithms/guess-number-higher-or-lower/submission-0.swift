/**
 * Forward declaration of guess API.
 * @param  num   your guess
 * @return       -1 if num is higher than the picked number
 *                1 if num is lower than the picked number
 *               otherwise return 0
 * func guess(_ num: Int) -> Int
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var lo = 1
        var hi = n
        while lo <= hi {
            let mid = (lo + hi) / 2
            let pos = guess(mid)
            if pos == 0 {
                return mid
            } else if pos < 0 {
                hi = mid - 1
            } else {
                lo = mid + 1
            }
        }
        return lo
    }
}
