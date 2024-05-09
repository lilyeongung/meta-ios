/*

 Optional -> signals that a value may or may not be present
    Nil -> indicates that a value is absent
 
 */

import UIKit

let aValue: Int? = 5
let bValue: Int! = 3  // implicitly unwrapped optional

// let bValue: Int! = aValue  // forced unwrapping -> value is unwrapped irrespective of its contents

//if let aValue = aValue {  // optional binding
//    print(aValue)
//} else {
//    print("No value")
//}


print(aValue)
print(bValue)


/*
 Suppose you are creating an app that requires a password and a passcode for users to sign in.
 
 To achieve this, you will use optionals, the forced unwrapping operator, and simple and multiple optional bindings to generate passcodes from passwords and check if the generated passcodes are valid.
 */

var password = "1234"
let passcode: Int! = Int(password)

print("The passcode of App is \(passcode!)")

// Check if passcode is valid
password = "hello world"
if let code = Int(password) {
    print("The passcode of App is \(code)")
} else {
    print("Invalid passcode!")
}

// Set a default passcode
let accessCode: Int
if let code = Int(password) {
    accessCode = code
} else {
    accessCode = 1111
}
print("The passcode of App is \(accessCode)")

// Implement two-factor authnetication with passcodes
let firstPassword = "hello"
let secondPassword = "world"

if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    print("The first passcode is \(firstPasscode) and the second passcode is \(secondPasscode)")
} else {
    print("Error, invalid passcodes.")
}

// Set default passcodes for two-factor authentication
let firstAccessCode: Int
let secondAccessCode: Int

if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    firstAccessCode = firstPasscode
    secondAccessCode = secondPasscode
} else {
    firstAccessCode = 1111
    secondAccessCode = 2222
}

print("The first passcode is \(firstAccessCode) and the second passcode is \(secondAccessCode)")

