class Solution {
    func tribonacci(_ n: Int) -> Int {
        if n <= 0 {
            return 0
        } else if n == 1 || n == 2 {
            return 1
        }
        var last = 1
        var secondLast = 1
        var thirdLast = 0
        for i in 3...n {
            let cur = last + secondLast + thirdLast
            thirdLast = secondLast
            secondLast = last
            last = cur
        }
        return last
    }
}
