struct Entry: Comparable {
    let frequency: Int
    let num: Int

    static func < (lhs: Entry, rhs: Entry) -> Bool {
        return lhs.frequency < rhs.frequency
    }
}

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var frequency = [Int: Int]()

        for num in nums {
            frequency[num, default: 0] += 1
        }

        var heap = Heap<Entry>()

        for (num, count) in frequency {
            heap.insert(Entry(frequency: count, num: num))

            if heap.count > k {
                heap.removeMin()
            }
        }

        var result = [Int]()

        while !heap.isEmpty {
            result.append(heap.removeMin().num)
        }

        return result
    }
}