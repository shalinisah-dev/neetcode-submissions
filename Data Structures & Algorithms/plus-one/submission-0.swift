class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        for i in (0..<digits.count).reversed() {
            digits[i] += 1
            if digits[i] < 10 {
                return digits
            } else {
                digits[i] = 0
            }
        }
        digits.append(1)
        digits.swapAt(0, digits.count - 1)
        return digits
    }
}
