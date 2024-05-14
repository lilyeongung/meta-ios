/*
 In this exercise, you will practice iterating through arrays and dictionaries. Also, you will learn to incorporate tuples in your for loops.

 You will iterate through game levels and increase the game score at each level. Furthermore, you will report the weather forecast for each day of the week.

 */

import UIKit

// Step 1: Display individual game level scores
let levelScores = [10, 20, 30, 40, 50, 60, 70]

for (level, score) in levelScores.enumerated() {  // enumerated() method returns a tuple of the iteration's index and value
    print("The score of level \(level + 1) is \(score)")
}

// Step 2: Display final game score
var gameScore = 0

for levelScore in levelScores {
    gameScore += levelScore
}
print("The game's score is \(gameScore)")

// Step 3: Display the weather forecast while the game is played
let weeklyTemperatures = [
    "Monday": 70, "Tuesday": 75, "Wednesday": 80,
    "Thursday": 85, "Friday": 90, "Saturday": 95, "Sunday": 100
]

for (day, temperature) in weeklyTemperatures {
    print("The temperature on \(day) is \(temperature)°F")
}

// Step 4: Sequence the weather forecast accurately
let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
let temperatures = [70, 75, 80, 85, 90, 95, 100]

for index in 0...6 {
    print("The temperature on \(days[index]) is \(temperatures[index])°F")
}
