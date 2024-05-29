import UIKit
import Foundation

// Step 1: Define the Little Lemon server address as a constant String
let menuAddress = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json"

// Step 2: Initialize a new URL object with the Little Lemon address String
let menuURL = URL(string: menuAddress)

// Step 3: Use guard to unwrap the Optional url constant
guard let menuURL = menuURL else {
    throw NSError()
}

// Step 4: Create a new URLRequest object with unwrapped url
let request = URLRequest(url: menuURL)

// Step 5: Create a new data task
let task = URLSession.shared.dataTask(with: menuURL) { data, response, error in
    // Step 7: Handle the response data of the data task
    if let data = data,
       // Step 8: Convert the Data to String
       let responseString = String(data: data, encoding: .utf8) {
        print(responseString)
    }
}

// Step 6: Resume the task to execute it
task.resume()
