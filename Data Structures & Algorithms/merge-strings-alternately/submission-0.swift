class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var startIndex1 = word1.startIndex
        var startIndex2 = word2.startIndex
        var mergedString: String = ""
        while (startIndex1 < word1.endIndex) || (startIndex2 < word2.endIndex) {
            if startIndex1 < word1.endIndex {
                mergedString.append(word1[startIndex1])
                word1.formIndex(after: &startIndex1)
            }
            if startIndex2 < word2.endIndex {
                mergedString.append(word2[startIndex2])
                word2.formIndex(after: &startIndex2)
            }
        }
        return mergedString
    }
}
