class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        for i in stride(from: digits.count - 1, through: 0, by: -1) {
            digits[i] += 1
            if digits[i] > 9 {
                digits[i] = 0
                continue
            } else {
                return digits
            }
        }
        digits.append(1)
        digits.swapAt(0, digits.count - 1)
        return digits
    }
}
