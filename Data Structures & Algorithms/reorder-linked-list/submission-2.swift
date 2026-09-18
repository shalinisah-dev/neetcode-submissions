class Solution {
    func reorderList(_ head: ListNode?) {
        var pointerHead = head
        reorderList(&pointerHead, head?.next)
    }

    private func reorderList(
        _ head: inout ListNode?,
        _ tail: ListNode?
    ) {
        guard let tail = tail else { return }

        reorderList(&head, tail.next)

        guard let front = head else { return }

        // Pointers meet or become adjacent: finish the list.
        if front === tail || front.next === tail {
            tail.next = nil
            head = nil
            return
        }

        let next = front.next
        front.next = tail
        tail.next = next
        head = next
    }
}