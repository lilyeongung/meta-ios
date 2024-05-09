/*
 Use when you need to look up values based on their identifier
 
 Use key-value pairs
 */

import UIKit

var travelMiles: Dictionary<String, Int> = ["Richie": 500, "Peter": 400, "Amy": 800]

var inferMiles = ["Richie": 500, "Peter": 400, "Amy": 800]

// Weather apps are handy tools that allow users to review the weather forecast for a specific timeline. For this activity, you will use dictionaries to store the daily temperatures of a specific week.

// Step 1: Create a dictionary
var weeklyTemperatures: [String: Int] = [:]

// Step 2: Set the daily temperatures in the dictionary
weeklyTemperatures = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95]

// Step 3.1: Update the first day’s temperature
weeklyTemperatures["Monday"]! += 20

// Step 3.2: Evaluate the changed value
print("The temperature on Monday is \(weeklyTemperatures["Monday"]!)°F.")

// Step 4: Add a new key-value pair
if let temperature = weeklyTemperatures["Sunday"] {
    print("Key is Sunday and temperature is \(temperature)")
} else {
    weeklyTemperatures["Sunday"] = 100
    print("The temperature on Sunday is \(weeklyTemperatures["Sunday"]!)°F")
}

// Step 5: Reset the dictionary for a new week
if weeklyTemperatures.count == 7 {
    print("Forecast status: \(weeklyTemperatures)")
    weeklyTemperatures = [:]
    print("Reset weekly temperatures for next week!")
}
