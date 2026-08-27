class KthLargest {
    var minHeap = Heap<Int>()
    let maxCount: Int
    init(_ k: Int, _ nums: [Int]) {
        maxCount = k
        for num in nums {
            insertInMinHeapIfEligible(num)
        }
    }
    private func insertInMinHeapIfEligible(_ num: Int) {
        if minHeap.count < maxCount {
            minHeap.insert(num)
        } else if minHeap.min! < num {
            minHeap.removeMin()
            minHeap.insert(num)
        }
    }

    func add(_ val: Int) -> Int {
        insertInMinHeapIfEligible(val)
        return minHeap.min!
    }
}
