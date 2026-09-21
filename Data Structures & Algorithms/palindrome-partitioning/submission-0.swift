class Solution {
    func partition(_ s: String) -> [[String]] {
        let charArray = Array(s)
        let length = charArray.count
        var isPalinSegment = [[Bool]](repeating:[Bool](repeating: false, count: length), count: length)
        var palinSegment = [[String]](repeating:[String](repeating: String(""), count: length), count: length)
        for i in 0..<length {
            var sub: String = ""
            for j in i..<length {
                sub.append(charArray[j])
                isPalinSegment[i][j] = isPalindrome(charArray, i, j)
                palinSegment[i][j] = sub
            }
        }
        var results = [[String]]()
        func allCombos(_ s: [Character],_ i: Int,_ res: inout [String]) {
            guard i < s.count else {
                results.append(res)
                return
            }
            var start = i
            while start < s.count {
                if isPalinSegment[i][start] {
                    res.append(palinSegment[i][start])
                    allCombos(s, start + 1, &res)
                    res.removeLast()
                }
                start += 1
            }
        }
        var res = [String]()
        allCombos(charArray, 0, &res)
        return results
    }

    private func isPalindrome(_ s: [Character],_ i: Int,_ j: Int) -> Bool {
        var start = i
        var end = j
        while start < end {
            if s[start] != s[end] {
                return false
            }
            start += 1
            end -= 1
        }
        return true
    }
}
