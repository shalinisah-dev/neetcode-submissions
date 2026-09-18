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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let head1 = reverseList(head)
        let head2 = removeNthNode(head1, n)
        return reverseList(head2)
    }

    private func removeNthNode(_ head: ListNode?,_ n: Int) -> ListNode? {
        let head1 = head
        var head = head
        var prev: ListNode? = nil
        var n = n
        while n > 1 {
            prev = head
            head = head?.next
            n -= 1
        }
        if prev === nil {
            return head1?.next
        } else {
            prev?.next = head?.next
            return head1
        }
    }

    private func reverseList(_ head: ListNode?) -> ListNode? {
        var head = head
        var rest = head?.next 
        if head === nil || rest === nil {
            return head
        }
        head?.next = nil
        while let next = rest {
            rest = rest?.next
            next.next = head
            head = next
        }
        return head
    }

}
