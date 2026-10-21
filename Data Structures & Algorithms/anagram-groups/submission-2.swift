class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var hash = [String: [String]]()
        for str in strs {
            hash[String(str.sorted()), default: [String]()].append(str)
        }
        return Array(hash.values)
    }
}
