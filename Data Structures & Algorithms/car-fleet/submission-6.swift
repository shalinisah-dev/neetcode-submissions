class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        var stack = [(pos: Int, speed: Int)]()
        var sortedCars = [(pos: Int, speed: Int)]()

        for i in 0..<position.count {
            sortedCars.append((position[i], speed[i]))
        }

        sortedCars.sort { $0.pos < $1.pos }

        for i in 0..<sortedCars.count {
            while !stack.isEmpty &&
                    isFleet(
                        stack.last!.pos,
                        stack.last!.speed,
                        sortedCars[i].pos,
                        sortedCars[i].speed,
                        target
                    ) {
                stack.removeLast()
            }

            stack.append(sortedCars[i])
        }

        return stack.count
    }

    private func isFleet(
        _ pos1: Int,
        _ speed1: Int,
        _ pos2: Int,
        _ speed2: Int,
        _ target: Int
    ) -> Bool {

        let time1 = Double(target - pos1) / Double(speed1)
        let time2 = Double(target - pos2) / Double(speed2)

        return time1 <= time2
    }
}