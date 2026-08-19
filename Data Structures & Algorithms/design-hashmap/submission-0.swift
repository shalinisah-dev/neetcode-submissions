class MyHashMap {
    var keyVal = [Int](repeating: -1, count: 1000001)
    init() {

    }

    func put(_ key: Int, _ value: Int) {
        keyVal[key] = value
    }

    func get(_ key: Int) -> Int {
        return keyVal[key]
    }

    func remove(_ key: Int) {
        put(key, -1)
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */
