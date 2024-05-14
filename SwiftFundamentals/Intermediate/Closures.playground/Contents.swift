/*
// Comparing functions to closures
 Function Syntax:
    func functionName(argument list)  ->  Return Type
     {
         Execute some code
     }
 
 Closure Syntax:
     {(argument list) -> ReturnType in
         Execute some code
     }
 
// Declaring a closure
     var aClosure = {
       () -> Void in
       print("This is a closure")
     }
 */


import UIKit

// Using a function to sort an array
func forwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}

let letters = ["H", "E", "X", "A"]

let sorted = letters.sorted(by: forwards)
print(sorted)

// Using closure to sort an array, Swift can infer types
//let myCollections = letters.sorted(by: {s1, s2 in return s1 < s2})

//print(myCollections)

// Further refactor with shorthand argument names
let myCollections = letters.sorted(by: {$0 < $1})
print(myCollections)


// MARK: - Practice using Closures
/*
 You want to pass around the unlocking treasure chest instructions in your codebase. To extend this functionality, you will abstract the instructions into a closure.

 A closure allows you to save instructions to a variable/constant. You will use a constant instead of a variable because you only need to assign the closure once in this exercise.

 With the functionality contained in a constant, you can pass around the constant like any other constant. In addition to executing blocks of code, you can save a closure in a variable/constant. Thus, making a closure more versatile than a function. Saving a closure inside a variable/constant is an example showcase of its versatility.

 You will practice writing a closure to unlock a treasure chest in this exercise.
 */

// Step 1: Declare a variable
var goldBars = 0

// Step 2: Declare a constant and set to closure
//let unlockTreasureChest = {(inventory: Int) -> Int in
//    return inventory + 100
//}

// Step 3: Refactor the closure
let unlockTreasureChest = { (inventory: inout Int) in
   inventory += 100
}

// Step 4: Use the closure
unlockTreasureChest(&goldBars)

// Step 5: Print the variable
print(goldBars)

// MARK: - Use functions and closures to modularize a program
/*
 One benefit of using functions and closures together is the ability to have a function completion handler via a callback. 
 
 By completing this exercise, you will have the opportunity to practice writing a completion handler.
 */

// Step 1: Declare a variable
var silverBars = 100

// Step 2: Declare a function, Add an in-out parameter, Add a closure parameter
func spendTenSilverBars(from inventory: inout Int, completion: (Int) -> Void) {  // completion handler
    inventory -= 10
    completion(inventory)
}

// Step 3: Print the initial gold bars
print("You had \(silverBars) silver bars.")

// Step 4: Call function passing in silverBars in the parameter with a completion handler
spendTenSilverBars(from: &silverBars) { silverBars in  // trailing closure
    print("You spent ten silver bars.")
    print("You have \(silverBars) silver bars.")
}
