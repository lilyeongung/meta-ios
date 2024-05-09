/*
 func functionName(arguments) -> ReturnType {
     Execute some code
     
     return ReturnType
 }
 */

import UIKit

/*
 MARK: - In-out parameters

 Function's parameters are constants. The compiler will not allow you to modify the parameters within the function body. To modify a parameter's value and persist the change, you use an in-out parameter.
 
 You declare an in-out parameter with the inout keyword before a parameter's type.
 */

func increment(number: inout Int) {
    number += 1
}

var number = 0
increment(number: &number)


/*
 Suppose you are creating a role-playing game where the protagonist is a pirate. The aim of the game is to journey across the seven seas and accumulate gold bars along the way.

 In this exercise, you will create a function to unlock treasure chests. Each time a treasure chest is unlocked, the player's gold bar inventory will increment by 100.
 */

// Step 1: Declare a variable
var goldBars = 0

// Step 2: Define a function
//func unlockTreasureChest(inventory: Int) -> Int {
//    return inventory + 100
//}

// Step 3: Return expression implicitly
func unlockTreasureChest(inventory: Int) -> Int {
    inventory + 100
}

// Step 4: Call the function
goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)
goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)
goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)
