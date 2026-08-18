class MinStack {
    var stack: [(Int, Int)] = []
    init() {

    }

    func push(_ val: Int) {
        let minElementUntilNow = min(val, getMin())
        stack.append((val, minElementUntilNow))
    }

    func pop() {
        _ = stack.popLast()
    }

    func top() -> Int {
        guard let last = stack.last else {
            return Int.min // Unexpected
        }
        return last.0
    }

    func getMin() -> Int {
        guard let last = stack.last else {
            return Int.max // Unexpected
        }
        return last.1
    }
}
