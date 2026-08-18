class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let a1 = Array(a.reversed())
        let b1 = Array(b.reversed())

        var result = [Character]()
        var carry = 0

        let count = max(a1.count, b1.count)

        for i in 0..<count {
            let x = i < a1.count && a1[i] == "1" ? 1 : 0
            let y = i < b1.count && b1[i] == "1" ? 1 : 0

            let sum = x + y + carry

            result.append(sum % 2 == 1 ? "1" : "0")
            carry = sum / 2
        }

        if carry == 1 {
            result.append("1")
        }

        return String(result.reversed())
    }
}