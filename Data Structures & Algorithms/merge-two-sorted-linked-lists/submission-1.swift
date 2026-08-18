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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        guard let list1 = list1 else {
            return list2
        }
        guard let list2 = list2 else {
            return list1
        }
        if list1.val <= list2.val {
            let restList = mergeTwoLists(list1.next, list2)
            list1.next = restList
            return list1
        } else {
            let restList = mergeTwoLists(list1, list2.next)
            list2.next = restList
            return list2
        }
        
    }
}
