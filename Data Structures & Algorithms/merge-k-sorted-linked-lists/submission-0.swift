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
    struct HeapNode: Comparable, Equatable {
        let val: Int
        let node: ListNode?
        static func < (lhs: HeapNode, rhs: HeapNode) -> Bool {
            return lhs.val < rhs.val
        }
        static func == (lhs: HeapNode, rhs: HeapNode) -> Bool {
            return lhs.val == rhs.val
        }
    }
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        var heap = Heap<HeapNode>()
        for list in lists {
            guard let list = list else {
                continue
            }
            heap.insert(HeapNode(val: list.val, node: list))
        }
        var nlist: ListNode? = ListNode(0) // dummy
        let head = nlist
        while heap.count > 0 {
            guard let min = heap.popMin() else {
                break
            }
            nlist?.next = min.node
            nlist = nlist?.next
            if let next = min.node?.next {
                heap.insert(HeapNode(val: next.val, node: next))
            }
        }
        return head?.next
    }
}
