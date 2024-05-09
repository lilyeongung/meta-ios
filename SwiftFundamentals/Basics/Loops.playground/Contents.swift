import UIKit

// Examples
let numberPlate = "WW87GP"
for character in numberPlate {
  print("character is = \(character)")
}

var firstDice = Int.random(in: 1...6)
var secondDice = Int.random(in: 1...6)
while firstDice != secondDice {
  firstDice = Int.random(in: 1...6)
  secondDice = Int.random(in: 1...6)
}
print("You rolled a double \(firstDice).")

/*
 Imagine you are creating a game that consists of free, paid and bonus levels.
 
 You will use both for in loops and if statements to implement the game logic while considering the relationship between the free, paid and bonus levels of the game.
 */

let levels = 10
let freeLevels = 4
let bonusLevel = 3

for level in 1...levels {
    if level == bonusLevel {
        print("Skip bonus level \(bonusLevel)")
        continue
    }
    print("Play level \(level)")
    
    if level == freeLevels {
        print("You have played all \(freeLevels) free levels. Buy the game to play the remaining \(levels - freeLevels) levels.")
        break
    }
}
