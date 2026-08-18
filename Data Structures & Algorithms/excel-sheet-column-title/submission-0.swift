class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        if columnNumber == 0 {
            return ""
        }
        let val = ((columnNumber - 1) % 26) 
        let baseValue = Int(Character("A").asciiValue!)
        let char = Character(UnicodeScalar(baseValue + val)!)
        var str = convertToTitle((columnNumber - 1) / 26)
        str.append(char)
        return str
    }
}
