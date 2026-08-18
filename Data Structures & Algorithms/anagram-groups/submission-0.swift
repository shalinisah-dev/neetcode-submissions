class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagramList = [String: [String]]()
        for str in strs {
            let key = String(str.sorted())
            anagramList[key, default:[]].append(str)
        }
        return Array(anagramList.values)
    }
}
