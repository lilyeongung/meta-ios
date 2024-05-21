// Polymorphism describes the process of inheriting base class methods to perform different tasks in the subclass
// Simply it is about transforming the base class at the subclass level

// Comes down to method override, which describes the process of changing the functionality of a method
// think about a transformation of an instance
// Base Spaghetti Dish -> Spaghetti and Meatball Dish


class Spaghetti {
    var ingredients: Set<String> = [
        "pasta",
        "tomato sauce"
    ]
    
    func fetchIngredients() {
        print("Ingredients: \(ingredients)")
    }
}

// Basic polymorphism -> inherits and transform functionality
final class SpaghettiMeatball: Spaghetti {
    override func fetchIngredients() {
        print("Before")
        super.fetchIngredients()
        print("After")
    }
}

let spaghetti = Spaghetti()
let spaghettiMeatball = SpaghettiMeatball()
spaghetti.fetchIngredients()
spaghettiMeatball.fetchIngredients()
