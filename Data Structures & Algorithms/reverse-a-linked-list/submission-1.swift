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
        if head.next == nil {
            return head
        }
        var next = head.next
        head.next = nil
        let reversedHead = reverseList(next)
        next?.next = head
        return reversedHead
    }
}
