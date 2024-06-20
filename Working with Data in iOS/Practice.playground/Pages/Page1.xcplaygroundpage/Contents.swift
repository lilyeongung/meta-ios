import UIKit
import Foundation

// MARK: - Fetching and parsing data

// Create structs to decode
struct MenuItem: Codable {
    let id: Int
    let title: String
    let price: String
}

struct JSONMenu: Codable {
    let menu: [MenuItem]
}


// Define the url
let address = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json"

// Unwrap url and create URL object
guard let url = URL(string: address) else {
    throw NSError()
}

// Create URL request
let request = URLRequest(url: url)


// Create data task
let task = URLSession.shared.dataTask(with: request) { data, response, error in
    if let data = data {
        // Decode server response to Swift Object
        let JSONResponse = try! JSONDecoder().decode(JSONMenu.self, from: data)
        
        JSONResponse.menu.forEach { print("id: \($0.id), title: \($0.title), price: $\($0.price)") }
    }
}
task.resume()


// JSON structure that represents User profile info
let jsonString = """
    {
        "name": "John",
        "picture":
            "https://github.com/Meta-Mobile-Developer-PC/Working-With-Data-API/blob/main/little-lemon-logo.png?raw=true"
    }
"""

// MARK: - Fetching Images

// Define Profile struct
struct Profile: Decodable {
    let name: String
    let picture: String
}

// Convert JSON string to Data
let jsonData = Data(jsonString.utf8)


// Decode JSON string
let profile = try! JSONDecoder().decode(Profile.self, from: jsonData)

// Fetching the Image
guard let pictureURL = URL(string: profile.picture) else {
    throw NSError()
}


// Creating and Executing the URL Request
let imageRequest = URLRequest(url: pictureURL)
let imageTask = URLSession.shared.dataTask(with: imageRequest) { data, response, error in
    if let data = data {
        let image = UIImage(data: data)
        print(image)
    }
}
imageTask.resume()
