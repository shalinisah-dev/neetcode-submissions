class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagramMap = [String: [String]]()
        for str in strs {
            let key = String(str.sorted())
            anagramMap[key, default:[]].append(str)
        }
        return Array(anagramMap.values)
    }
}
