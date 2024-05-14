/*/
 You might recall that in an earlier exercise, you implemented code for a basic weather app to display the temperature of a specific day. In this exercise, you will apply programming concepts that configure the app to work with Fahrenheit degrees.
 
 You will use conditional statements and logical operators to check the configuration of the weather app and display its settings.
 */

import UIKit

let freeApp = true

if freeApp == true {
    print("You are using the free version of the app. Buy the full version of the app to get access to all of its features.")
}

let morningTemperature = 70
let eveningTemperature = 80

if morningTemperature < eveningTemperature {
    print("The temperature is \(morningTemperature)")
} else {
    print("The evening temperature is \(eveningTemperature)")
}


let temperatureDegree = "Fahrenheit"

if temperatureDegree == "Fahrenheit" {
    print("The app uses Fahrenheit degrees")
} else {
    print("The app uses Celsius degrees")
}

if temperatureDegree == "Fahrenheit" || temperatureDegree == "Celsius" {
    print("The app is configured properly")
} else {
    print("The app is not configured properly")
}

// Check what region the app is configured for
switch temperatureDegree {
    case "Fahrenheit": print("The app is configured for the US")
    case "Celsius": print("The app is configured for Europe")
    default: print("App has an unknown configuration")
}
