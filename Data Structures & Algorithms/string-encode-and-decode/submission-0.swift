class Solution {

    func encode(_ strs: [String]) -> String {
        var encoded: String = ""
        for str in strs {
            encoded.append(Data(str.utf8).base64EncodedString())
            encoded += ","
        }
        return encoded
    }

    func decode(_ str: String) -> [String] {
        var strs = str.components(separatedBy: ",")
        var ans = [String]()
        for s in strs {
            if let data = Data(base64Encoded: s) {
                if let message = String(data: data, encoding: .utf8) {
                    ans.append(message)
                }
            }
        }
        if ans.count > 0 {
            ans.removeLast()
        }
        return ans
    }
}
