class Solution {
    func mySqrt(_ x: Int) -> Int {
        var lo = 0
        var hi = 65536
        while lo <= hi {
            let mid = (lo + hi) / 2
            let square = mid * mid
            if square == x {
                return mid
            } else if square > x {
                hi = mid - 1
            } else {
                lo = mid + 1
            }
        }
        return hi
    }
}
