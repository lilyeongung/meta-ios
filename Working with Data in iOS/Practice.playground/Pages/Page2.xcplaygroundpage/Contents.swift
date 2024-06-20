//: [Previous](@previous)
import UIKit
import Foundation

//: [Next](@next)

// Fetching and parsing data
struct MenuItem: Codable {
    let id: Int
    let title: String
    let price: String
}

struct JSONMenu: Codable {
    let menu: [MenuItem]
}

let address = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json"

guard let url = URL(string: address) else {
    throw NSError()
}

let request = URLRequest(url: url)

let task = URLSession.shared.dataTask(with: request) { data, response, error in
    if let data = data {
        let jsonResponse = try! JSONDecoder().decode(JSONMenu.self, from: data)
        
        jsonResponse.menu.forEach { print("id: \($0.id)") }
    }
}
task.resume()


// Fetching images
let jsonString =  """
    {
        "name": "John",
        "picture":
            "https://github.com/Meta-Mobile-Developer-PC/Working-With-Data-API/blob/main/little-lemon-logo.png?raw=true"
    }
"""

struct Profile: Codable {
    let name: String
    let picture: String
}

let jsonData = Data(jsonString.utf8)

let profile = try! JSONDecoder().decode(Profile.self, from: jsonData)

guard let imageURL = URL(string: profile.picture) else {
    throw NSError()
}

let imageRequest = URLRequest(url: imageURL)

let imageTask = URLSession.shared.dataTask(with: imageRequest) { data, response, error in
    if let data = data {
        let image = UIImage(data: data)
        print(image)
        print("Success")
    }
}
imageTask.resume()

