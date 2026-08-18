class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m - 1
        var j = n - 1
        var k = nums1.count - 1 // merged array pointer
        while j >= 0 {
            if i >= 0 && (nums1[i] >= nums2[j]) {
                nums1[k] = nums1[i]
                nums1[i] = 0
                i -= 1
                k -= 1
            } else {
                nums1[k] = nums2[j]
                j -= 1
                k -= 1
            }
        }
    }
}
