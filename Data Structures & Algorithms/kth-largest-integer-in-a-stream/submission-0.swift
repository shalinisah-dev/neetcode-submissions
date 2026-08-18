class KthLargest {

    var streamHeap = [Int]()
    let maxHeapSize: Int
    init(_ k: Int, _ nums: [Int]) {
        maxHeapSize = k
        for num in nums {
            _ = add(num)
        }
    }

    func add(_ val: Int) -> Int {
        if streamHeap.isEmpty {
            streamHeap.append(val)
            return val
        } 
        guard let first = streamHeap.first, maxHeapSize >= 1 else {
            return Int.min // Unexpected
        }
        if streamHeap.count == maxHeapSize && val <= first {
            return first
        } else if streamHeap.count == maxHeapSize && val > first {
            streamHeap.append(val)
            streamHeap.swapAt(0, streamHeap.count - 1)
            _ = streamHeap.removeLast()
            heapifyDown(0)
        } else {
            streamHeap.append(val)
            heapifyUp(streamHeap.count - 1)
        }
        return streamHeap.first!
    }

    func heapifyUp(_ i: Int) {
        guard i > 0 else {
            return
        }
        let parent = (i - 1) / 2 
        if streamHeap[parent] > streamHeap[i] {
            streamHeap.swapAt(parent, i)
            heapifyUp(parent)
        }
    }

    func heapifyDown(_ i: Int) {
        let count = streamHeap.count
        guard i < count else {
            return
        }
        let leftChild = 2 * (i + 1) - 1
        let rightChild = 2 * (i + 1)
        var minIndex = i
        var minElement = streamHeap[i]
        if leftChild < count && streamHeap[leftChild] < minElement {
            minElement = streamHeap[leftChild]
            minIndex = leftChild
        }
        if rightChild < count && streamHeap[rightChild] < minElement {
            minElement = streamHeap[rightChild]
            minIndex = rightChild
        }
        if minIndex != i {
            streamHeap.swapAt(i, minIndex)
            heapifyDown(minIndex)
        }
    }
}
