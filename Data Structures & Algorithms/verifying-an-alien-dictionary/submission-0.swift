class Solution {
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        guard words.count > 0 else {
            return true
        }
        var orderIndex = [Int](repeating: 0, count: 26)
        for (i, c) in order.enumerated() {
            orderIndex[Int(c.asciiValue! - Character("a").asciiValue!)] = i
        }
        var last = words[0]
        for word in words {
            if word == last {
                continue
            }
            if compareAlien(word, last, orderIndex) {
                return false
            }
            last = word
        }
        return true
    }

    func compareAlien(_ first: String,_ second: String,_ orderIndex: [Int]) -> Bool {
        let count = min(first.count, second.count)
        let firstArr = Array(first)
        let secondArr = Array(second)
        for i in 0..<count {
            if firstArr[i] == secondArr[i] {
                continue
            }
            let val1 = orderIndex[Int(firstArr[i].asciiValue! - Character("a").asciiValue!)]
            let val2 = orderIndex[Int(secondArr[i].asciiValue! - Character("a").asciiValue!)]
            return val1 < val2
        }
        return first.count < second.count
    }


}
