class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var hash = [[Int]: [String]]()
        for str in strs {
            var charArray = [Int](repeating: 0, count: 26)
            for ch in str {
                charArray[Int(ch.asciiValue!) - 97] += 1
            }
            hash[charArray, default: [String]()].append(str)
        }
        return Array(hash.values)
    }
}
