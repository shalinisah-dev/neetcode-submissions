// 8:15pm
// Brute force coded by 8:20pm
// Stack based solution thought by 8:22pm
class StockSpanner {

    var stack = [(Int, Int)]()
    init() {

    }

    func next(_ price: Int) -> Int {
        var span = 1
        while !stack.isEmpty && stack.last!.0 <= price {
            span += stack.last!.1
            stack.removeLast()
        }
        stack.append((price, span))
        return span
    }
}

/**
 * Your StockSpanner object will be instantiated and called as such:
 * let obj = StockSpanner()
 * let param_1 = obj.next(price)
 */
