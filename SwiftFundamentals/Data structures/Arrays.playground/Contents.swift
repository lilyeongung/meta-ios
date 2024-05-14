/*
 Suppose you are creating a very basic game with multiple levels. 
 The first three levels are free, while players need to pay to access the remaining levels.
 The game dashboard displays the player's score for each individual level.
 
 In this exercise, you will use arrays to store the scores of the levels while the game is played.
 
 
 MARK: - Tips
 - Use the count property to determine the number of elements in an array.
 - Use the append method to add a certain value to an array.
 - Use the addition assignment operator to add an array to another array.
 */


import UIKit

// Create empty array of type Ints
var levelScores: [Int] = []

// Use count property to determine if the game has started
if levelScores.count == 0 {
    print("Start playing the game!")
}

// Add the first level's score
let firstLevelScore = 10
levelScores.append(firstLevelScore)
print(levelScores[0])

// Add bonus score to the first level's score
let levelBonusScore = 40
levelScores[0] += levelBonusScore

print(levelScores[0])

// Add more values to the array
let freeLevelScores = [20, 30]
levelScores += freeLevelScores

// Check if free version of the game has been played
let freeLevels = 3

if levelScores.count == freeLevels {
    print("You have to buy the game in order to play its full version")
    levelScores = []
    print("Game restarted!")
}


// Using different types with arrays
var anArray: [Any] = [59]

anArray.append(3.33)
anArray.append("Orange")

print(anArray)
