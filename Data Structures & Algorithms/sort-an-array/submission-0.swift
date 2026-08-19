class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var nums = nums
        let n = nums.count

        // 1. Build a max heap
        for i in stride(from: n / 2 - 1, through: 0, by: -1) {
            heapifyDown(&nums, i, n)
        }

        // 2. Move max element to the end one by one
        for end in stride(from: n - 1, through: 1, by: -1) {
            nums.swapAt(0, end)

            // Heap now only includes [0..<end]
            heapifyDown(&nums, 0, end)
        }

        return nums
    }

    private func heapifyDown(
        _ nums: inout [Int],
        _ start: Int,
        _ heapSize: Int
    ) {
        var parent = start

        while true {
            let left = 2 * parent + 1
            let right = 2 * parent + 2

            var largest = parent

            if left < heapSize && nums[left] > nums[largest] {
                largest = left
            }

            if right < heapSize && nums[right] > nums[largest] {
                largest = right
            }

            // Parent is already larger than both children
            if largest == parent {
                break
            }

            nums.swapAt(parent, largest)
            parent = largest
        }
    }
}