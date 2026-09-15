class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()
        for token in tokens {
            if let num = Int(token) {
                stack.append(num)
            } else {
                let second = stack.removeLast()
                let first = stack.removeLast()
                stack.append(operate(first, second, token))
            }
        }
        return stack.last!
    }

    func operate(_ first: Int, _ second: Int, _ op: String) -> Int {
        switch op {
        case "+": return first + second
        case "-": return first - second
        case "*": return first * second
        default:  return first / second
        }
    }
}