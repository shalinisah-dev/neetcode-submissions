// 8:15pm
// Brute force coded by 8:20pm
// Stack based solution thought by 8:22pm
class StockSpanner {

    var stocks = [Int]()
    init() {

    }

    func next(_ price: Int) -> Int {
        stocks.append(price)
        var j = stocks.count - 1
        var span = 0
        while j >= 0 {
            if stocks[j] <= price {
                j -= 1
                span += 1
            } else {
                break;
            }
        }
        return span
    }
}

/**
 * Your StockSpanner object will be instantiated and called as such:
 * let obj = StockSpanner()
 * let param_1 = obj.next(price)
 */
