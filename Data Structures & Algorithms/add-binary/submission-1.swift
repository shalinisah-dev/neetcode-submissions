class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var itA = a.reversed().makeIterator()
        var itB = b.reversed().makeIterator()

        var result = ""
        var carry = 0

        while true {
            let chA = itA.next()
            let chB = itB.next()

            if chA == nil && chB == nil {
                break
            }

            let x = chA == "1" ? 1 : 0
            let y = chB == "1" ? 1 : 0

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