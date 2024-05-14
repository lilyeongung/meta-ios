// Struct instances are unique copy of its data
struct Recipe {
    //    let name: String
    //    var ingredients: Set<String>
    //    var steps: [String]
    
    var orderCount = 0
    
    mutating func incrementOrderCount() {
        orderCount += 1
    }
    
    mutating func decrementOrderCount() {
        orderCount -= 1
    }
    
    
    //    func printDescription() {
    //        print("Recipe: \(name)")
    //        print("Ingredients: \(ingredients)")
    //
    //        for (index, step) in steps.enumerated() {
    //            print("\(index + 1). \(step).")
    //        }
    //    }
    
}

//let chocolateCookieRecipe = Recipe(
//    name: "Chocolate Cookie",
//    ingredients: [
//        "Cocoa powder",
//        "Chocolate chip",
//        "Flour"
//    ], steps: [
//        "First action",
//        "Second action",
//        "Third action"
//    ]
//)
//
//chocolateCookieRecipe.printDescription()


var recipe = Recipe()
print(recipe.orderCount)
recipe.incrementOrderCount()
print(recipe.orderCount)
recipe.decrementOrderCount()
print(recipe.orderCount)


/*
 At Little Lemon, customers can book table reservations in various ways.
 
 You are tasked with creating a structure to hold the booking information for each person, including their name and the table number.
 
 It should also be possible to update the person’s name to accommodate any booking changes.
 */

// Step 1: Declare a struct to hold table booking information
struct TableReservation {
    var name: String
    let tableNumber: Int
    
    // Step 4: Define a method to update the name of the customer
    mutating func updateBooking(updatedName: String) {
        name = updatedName
    }

    
}

// Step 2: Create a new table reservation
var johnBooking = TableReservation(name: "John", tableNumber: 1)

// Step 3: Output the reservation to the console
print(johnBooking)


// Step 5: Update the name of the customer for the reservation
johnBooking.updateBooking(updatedName: "Maria")

// Step 6: Output the booking to console to confirm the change
print(johnBooking)


