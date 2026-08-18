class MyHashSet {
    var underlyingSet = Array(repeating: false, count: 1000001)
    init() {

    }

    func add(_ key: Int) {
        underlyingSet[key] = true
    }

    func remove(_ key: Int) {
        underlyingSet[key] = false
    }

    func contains(_ key: Int) -> Bool {
        return underlyingSet[key]
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
