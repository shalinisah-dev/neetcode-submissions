class Solution {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var fives = 0
        var tens = 0
        var twenties = 0
        for bill in bills {
            if bill == 5 {
                fives += 1
            } else if bill == 10 {
                tens += 1
                fives -= 1
                if fives < 0 {
                    return false
                }
            } else {
                twenties += 1
                if tens > 0 {
                    fives -= 1
                    tens -= 1
                } else {
                    fives -= 3
                }
                if fives < 0 || tens < 0 {
                    return false
                }
            }
        }
        return true
    }
}
