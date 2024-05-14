// Class instances are unique, where as structs -> instances are unique copies
class Recipe {
    var ingredients: [String]
    var isAvailable = false
    
    init(ingredients: [String]) {
        self.ingredients = ingredients
    }
}


let marioRecipe = Recipe(ingredients: [
    "Cocoa powder",
    "Flour"
])

// Computed property calculates and returns values - read only

// Computed property in a class
class Menu {
    let mains: [String]
    let drinks: [String]
    let desserts: [String]
    var menuItemsCount: Int {
        mains.count + drinks.count + desserts.count
    }
    
    init(mains: [String], drinks: [String], desserts: [String]) {
        self.mains = mains
        self.drinks = drinks
        self.desserts = desserts
    }
}


/*
 The Little Lemon application design is rich with many images and other assets that give users more details about meals, promotions and discounts rather than just text.
 
 Your task is to write a class that represents an internal file of the application and can produce a full file name to load it later correctly for the users to review.
 
 You will use stored and computed properties in a class to achieve this.
 */

// Step 1: Create a class to represent a local file with two stored properties
class LocalFile {
    let name: String
    let fileExtension: String
    
    // Step 2: Declare an init method to prepare class for initialization later -> Swift autogenerates
    init(name: String, fileExtension: String) {
        self.name = name
        self.fileExtension = fileExtension
    }
    
    // Step 3: Create a computed property that returns a full file name
    var fullFileName: String {
        return name + "." + fileExtension
    }
}

// Step 4: Create a class instance to verify that it works as expected
let file = LocalFile(name: "image", fileExtension: "png")

print(file.fullFileName)
