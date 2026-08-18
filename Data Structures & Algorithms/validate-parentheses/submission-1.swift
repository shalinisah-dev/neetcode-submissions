class Solution {
    func isValid(_ s: String) -> Bool {
        let len = s.length // O(n)
        guard len % 2 == 0 else {
            return false
        }
        guard len >= 2 else {
            return true
        }
        var i = s.startIndex
        var parenStr: String = ""
        while i < s.endIndex { // O(n)
            if isOpenParen(s[i]) {
                parenStr.append(s[i])
            } else {
                if let last = parenStr.last, isValidParen(last, s[i]) {
                    parenStr.removeLast()
                } else {
                    return false
                }
            }
            s.formIndex(after: &i)
        }
        return parenStr.isEmpty
    }

    func isOpenParen(_ a: Character) -> Bool {
        if a == "(" {
            return true
        } else if a == "[" {
            return true
        } else if a == "{" {
            return true
        }
        return false
    }

    func isValidParen(_ a: Character,_ b: Character) -> Bool {
        if a == "(" && b == ")" {
            return true
        } else if a == "[" && b == "]" {
            return true
        } else if a == "{" && b == "}" {
            return true
        }
        return false
    }
}
