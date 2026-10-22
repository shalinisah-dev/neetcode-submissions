class Solution {
    // #length#string#length#string
    func encode(_ strs: [String]) -> String {
        var ans: String = ""
        for str in strs {
            ans += "#"
            ans += "\(str.length)"
            ans += "#"
            ans += str
        }
        return ans
    }

    func decode(_ str: String) -> [String] {
        var chArray = Array(str)
        var i: Int = 0
        var ans = [String]()
        let limiter = Character("#")
        while i < chArray.count {
            i += 1
            var num: String = ""
            while chArray[i] != limiter {
                num.append(chArray[i])
                i += 1
            }
            i += 1
            let start = i
            let length = Int(num)!
            var str: String = ""
            while i < (start + length) {
                str.append(chArray[i])
                i += 1
            }
            ans.append(str)
        }
        return ans
    }
}
