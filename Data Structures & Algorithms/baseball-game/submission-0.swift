class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var stack = [Int]()
        var sum = 0
        for op in operations {
            if op == "+" {
                let last = stack[stack.count - 1]
                let secondLast = stack[stack.count - 2]
                let val = last + secondLast
                stack.append(val)
                sum += val
            } else if op == "C" {
                let val = stack.last!
                _ = stack.removeLast()
                sum -= val
            } else if op == "D" {
                if let last = stack.last {
                    stack.append(last*2)
                    sum += (last * 2)
                }
            } else {
                let number = Int(op) ?? 0
                sum += number
                stack.append(number)
            }
        }
        return sum
    }
}
