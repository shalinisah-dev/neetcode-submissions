/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head = head else {
            return nil
        }
        var cur = head
        var rest = head.next
        while let next = rest {
            rest = next.next // rest of the list
            next.next = cur
            cur = next
        }
        head.next = nil
        return cur
    }
}

// 0, 1, 2, 3

// 2 -> 1 -> 0 -> nil
