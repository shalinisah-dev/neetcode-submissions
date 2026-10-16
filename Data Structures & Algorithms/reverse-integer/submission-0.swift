class Solution {
    func reverse(_ x: Int) -> Int {
        var y = 0
        var d = x
        let maxVal: Int = Int(Int32.max)
        let minVal: Int = Int(Int32.min)
        while d != 0 {
            y = y * 10 + d % 10
            d /= 10
            if x >= 0 && d != 0 && y != 0 && (maxVal / y) < 10 {
                return 0
            }
            if x < 0 && d != 0 && y != 0 && (minVal / y) < 10 {
                return 0
            }
        }
        // if x < 0 {
        //     if y < maxVal {
        //         y *= -1
        //     } else {
        //         return 0
        //     }
        // }
        return y
    }
}
