//: [Previous](@previous)
//: #### Exercise: Work with raw and associated values


// Step 1: Create an enumeration to represent ingredients of a meal
enum Ingredient: String {
    case chicken
    case lettuce
    case bread
}
// Create a new constant to hold one of the enumeration cases
let ingredient = Ingredient.chicken
// Create a switch statement to print information
switch ingredient {
case .chicken:
    print("We use free-range \(ingredient.rawValue).")
case .lettuce:
    print("Our \(ingredient.rawValue) is from Romaine.")
case .bread:
    print("We only serve the freshest \(ingredient.rawValue).")
}

// Step 2: Create a new enumeration to represent the allergens using associated values
enum RecipeInformation {
    case allergens(information: String)
}
// Define constant to represent recipe information
let recipeInformation = RecipeInformation.allergens(information: "peanuts, milk, gluten")
// Switch statement for associated values
switch recipeInformation {
case .allergens(let information):
    print("The meal includes the following allergens: \(information)")
}



// More Enums with Raw values
enum Ingredients: String {
    case lettuce = "Romain Lettuce"
    case croutons = "Salted Croutons"
    case chicken = "Free Range Chicken"
}

print("This is the ingredient enumeration value: \(Ingredients.lettuce.rawValue)")
