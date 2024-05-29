import UIKit
import Foundation

// JSON structure that represents User profile info
let jsonString = """
    {
        "name": "John",
        "picture":
            "https://github.com/Meta-Mobile-Developer-PC/Working-With-Data-API/blob/main/little-lemon-logo.png?raw=true"
    }
"""
// Define Profile struct
struct Profile: Decodable {
    let name: String
    let picture: String
}

// Convert JSON string to Data
let jsonData = jsonString.data(using: .utf8)!  // The exclamation mark (!) force unwraps the optional, assuming the conversion will always succeed
// Decode JSON string
let decoder = JSONDecoder()
let profile = try! decoder.decode(Profile.self, from: jsonData)

// Fetching the Image
let pictureUrl = URL(string: profile.picture)  // Creates a URL object from the profile.picture string
guard let pictureUrl = pictureUrl else {  // This ensures that the URL is valid. If it is not, it throws a generic
    throw NSError()
}

// Creating and Executing the URL Request
let request = URLRequest(url: pictureUrl)  // URLRequest object is created using the pictureUrl
let task = URLSession.shared.dataTask(with: request) { data, response, error in  // data task created using URLSession.shared.dataTask. This task fetches the data from the specified URL
    // If data is not nil, it converts the data to a UIImage and prints it
    if let data = data {  // This checks if data was received
        let image = UIImage(data: data)
        print(image)
    }
    
}
task.resume()  // This line is crucial because it starts the task
