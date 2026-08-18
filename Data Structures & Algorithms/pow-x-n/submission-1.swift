class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        if n == 0 {
            return 1
        } else if n == 1 {
            return x
        } else if n < 0 {
            return 1 / myPow(x, -1 * n)
        }
        let remainder = n % 2
        let half = myPow(x, n / 2)
        return half * half * (remainder == 1 ? x : 1)
    }
}
