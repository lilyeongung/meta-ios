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
//var goldBars = 0

// Step 2: Define a function
//func unlockTreasureChest(inventory: Int) -> Int {
//    return inventory + 100
//}

// Step 3: Return expression implicitly
func unlockTreasureChest(inventory: Int) -> Int {
    inventory + 100
}

// Step 4: Call the function
//goldBars = unlockTreasureChest(inventory: goldBars)
//print(goldBars)
//goldBars = unlockTreasureChest(inventory: goldBars)
//print(goldBars)
//goldBars = unlockTreasureChest(inventory: goldBars)
//print(goldBars)


/*
 In this scenario, Developer B is having a challenging time understanding and reading Developer A’s function. To clearly communicate the intention of a piece of code, it is helpful to write code expressively. To make reading code easy, it is helpful to write code succinctly. Writing expressive and succinctly written code is commonly referred to as syntactic sugar.

 In this function exercise, you will practice Swift syntactic sugar by utilizing a(n):
 - Default parameter value.
 - Argument label.
 - In-out parameter.
 
 You will make a function more expressive and succinct than the original version.
  */

// Step 1: Declare a variable
var goldBars = 0

// Step 2: Add unsweetened function
//func incrementInventory(inventory: Int) -> Int {
//    return inventory + 100
//}

// Step 3: Add a second parameter, update body, and provide a default parameter value
//func incrementInventory(inventory: Int, amount: Int = 100) -> Int {
//    return inventory + amount
//}

// Step 4: Add an argument label, omit an argument label
//func incrementInventory(_ inventory: Int, by amount: Int = 100) -> Int {
//    return inventory + amount
//}

// Step 5: Make an in-out parameter, set in-out parameter value in the body
func incrementInventory(_ inventory: inout Int, by amount: Int = 100) {
    inventory += amount
}

// Calling the function
incrementInventory(&goldBars)
print(goldBars)

incrementInventory(&goldBars)
print(goldBars)

incrementInventory(&goldBars)
print(goldBars)

incrementInventory(&goldBars, by: 300)
print(goldBars)

incrementInventory(&goldBars, by: 50)
print(goldBars)


