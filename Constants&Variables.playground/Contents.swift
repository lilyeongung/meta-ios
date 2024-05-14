/*
 Imagine you are creating a weather app that computes daily and weekly temperatures.
 
 You will use constants and variables to define the temperature of the current day of the week and the average temperature for that week.
 */


import Cocoa

let day = "Monday"
let dailyTemperature = 75

print("Today is \(day). Best day of the week!")
print("The temperature on \(day) is \(dailyTemperature)°F")

var temperature = 70
print("The temperature on \(day) morning is \(temperature)°F")

temperature = 80
print("The temperature on \(day) evening is \(temperature)°F")

let weeklyTemperature = 75
temperature = weeklyTemperature

print("The average temperature of the week is \(temperature)°F")

