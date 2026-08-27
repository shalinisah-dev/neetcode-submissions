class TimeMap {
    var dict = [String: [(Int, String)]]()
    init() {

    }

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        dict[key, default:[(Int, String)]()].append((timestamp, value))
    }

    func get(_ key: String, _ timestamp: Int) -> String {
        guard let timestampedValues = dict[key] else {
            return ""
        }
        var lo = 0
        var hi = timestampedValues.count - 1
        while lo <= hi {
            let mid = (lo + hi) / 2
            if timestampedValues[mid].0 == timestamp {
                return timestampedValues[mid].1
            } else if timestampedValues[mid].0 > timestamp {
                hi = mid - 1
            } else {
                lo = mid + 1
            }
        }
        if hi >= 0 {
            return timestampedValues[hi].1
        }
        return ""
    }
}
