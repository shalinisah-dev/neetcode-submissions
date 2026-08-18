/**
 * Definition of Interval:
 * class Interval {
 *     var start: Int
 *     var end: Int
 *     init(_ start: Int, _ end: Int) {
 *         self.start = start
 *         self.end = end
 *     }
 * }
 */

class Solution {
    func canAttendMeetings(_ intervals: [Interval]) -> Bool {
        guard intervals.count > 0 else {
            return true
        }
        let sortedIntervals = intervals.sorted { $0.start < $1.start }
        var lastEnd = 0
        for interval in sortedIntervals {
            if interval.start >= lastEnd {
                lastEnd = interval.end
            } else {
                return false
            }
        }
        return true
    }
}
