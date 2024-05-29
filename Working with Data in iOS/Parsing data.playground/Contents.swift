// Exercise: Parsing data in Swift
import Foundation

/* Scenario

 Suppose you are creating the Little Lemon restaurant application. In the recipes section, you have to get all the recipes from the server and display them to the user.
 
 As this exercise is not focused on the UI components, you will simply output all the names of the recipes to the console.
 */

// Array of recipe objects received from the Little Lemon API. 
// Each recipe has a text title, an integer representing the number of views and a floating-point rating number.
let recipesJSONString = """
[
    {
        "title": "Apple pie",
        "views": 3847,
        "rating": 4.5
    },
    {
        "title": "Boiled egg",
        "views": 10584,
        "rating": 4.9
    },
    {
        "title": "Bacon roll",
        "views": 5847,
        "rating": 3.2
    }
]
"""


// Step 1: Define a custom Swift struct
struct Recipe: Decodable {
    let title: String
    let rating: Double
}

// Step 2: Convert JSON String to Data
let recipesData = recipesJSONString.data(using: .utf8)!


// Step 3: Create a new JSONDecoder instance
let decoder = JSONDecoder()

// Step 4: Decode JSON into the Swift object
let recipes = try! decoder.decode([Recipe].self, from: recipesData)

// Step 5: Output information to the console
recipes.forEach { print("\($0.title) with a rating of \($0.rating)") }
