class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var right = 0
        var end = asteroids.count - 1
        var asteroids = asteroids
        while right <= end {
            if asteroids[right] < 0 {
                var move = right - 1
                while move >= 0 {
                    if asteroids[move] == 0 {
                        move -= 1
                        continue
                    }
                    if asteroids[move] < 0 {
                        break
                    }
                    if asteroids[right] < -1 * asteroids[move] {
                        asteroids[move] = 0
                        move -= 1
                    } else if asteroids[right] == -1 * asteroids[move] {
                        asteroids[move] = 0
                        asteroids[right] = 0
                        break
                    } else {
                        asteroids[right] = 0
                        break
                    }
                }
            }
            right += 1
        }
        var ans = [Int]()
        for asteroid in asteroids {
            if asteroid != 0 {
                ans.append(asteroid)
            }
        }
        return ans
    }
}
