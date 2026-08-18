class MyHashSet {
    var underlyingSet = Array(repeating: 0, count: 15626)
    init() {

    }

    func add(_ key: Int) {
        underlyingSet[key / 64] |= 1 << (key % 64)
    }

    func remove(_ key: Int) {
        if contains(key) {
            underlyingSet[key / 64] ^= 1 << (key % 64)
        }
    }

    func contains(_ key: Int) -> Bool {
        let mask = 1 << (key % 64)
        return (underlyingSet[key / 64] & mask) != 0
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
