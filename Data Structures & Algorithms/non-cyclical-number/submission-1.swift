class Solution {
    func isHappy(_ n: Int) -> Bool {
        var slow = n
        var fast = sumOfSquares(n)

        while slow != fast {
            fast = sumOfSquares(fast)
            fast = sumOfSquares(fast)
            slow = sumOfSquares(slow)
        }
        return fast == 1
    }

    private func sumOfSquares(_ n: Int) -> Int {
        var num = n
        var output = 0

        while num > 0 {
            let digit = num % 10
            output += digit * digit
            num /= 10
        }
        return output
    }
}