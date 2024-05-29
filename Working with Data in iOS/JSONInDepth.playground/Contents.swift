import Foundation

// MARK: - Simple JSON decoding
// Step 1. Define a custom object, like a struct, and make it implement the Decodable protocol:
struct Recipe: Decodable {
    let title: String
    let views: Int
}

// Step 2. Convert JSON String into Data
let JSON = """
{
    "title": "Little Lemon Apple pie",
    "views": 47093
}
"""
let jsonData = JSON.data(using: .utf8)!

// Step 3. Use JSONDecoder to decode the JSON data into a model that you have created by calling the decode method of the JSONDecoder instance
let recipe = try! JSONDecoder().decode(Recipe.self, from: jsonData)



// MARK: - JSON as an array of objects
// Step 1. To map an array of recipes, the JSON would first have to be modified to represent an array of recipes in the following way:
let JSONArray = """
[
    {
        "title": "Little Lemon Apple pie",
        "views": 47093
    },
    {
        "title": "Little Lemon scrambled egg",
        "views": 10757
    }
]
"""
// Step 2. JSON array has to be converted to data as in the earlier example and decoded using JSONDecoder.
let jsonArrayData = JSONArray.data(using: .utf8)!
let recipes = try! JSONDecoder().decode([Recipe].self, from: jsonArrayData)



// MARK: - JSON mapped using custom property names
// Suppose the Recipe2 structure from the previous section of this reading, is updated with an image of the recipe:
let JSON2 = """
{
    "title": "Little Lemon Apple pie",
    "views": 47093,
    "url" : "www.littlelemon.com/recipes/298/image.png"
}
"""

struct Recipe2: Decodable {
    // The CodingKeys enumeration is created inside the struct. It extends String and implements the CodingKey protocol.
    enum CodingKeys: String, CodingKey { case
        title, views,
        // Since the image key is named url, it is not exactly clear what kind of URL it is. To add more clarity, you can name the Swift object key imageLink by updating the Recipe2 model as illustrated below:
        imageLink = "url"
    }
     
     
    let title: String
    let views: Int
    let imageLink: String
}

let jsonData2 = JSON2.data(using: .utf8)!
let recipe2 = try! JSONDecoder().decode(Recipe2.self, from: jsonData2)
// Now when the JSON data is mapped into the Swift model, the original url value of the JSON can be accessed by printing the imageLink property of the mapped recipe object:
print(recipe2.imageLink)
