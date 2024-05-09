/*
 For this activity, suppose you are creating a basic login feature for a banking app. You will use tuples to store the credentials for logging into the banking app.
 
 */

import UIKit

// Step 1: Store the app credentials
let credentials = (user: "", passcode: -1111)

// Step 2: Evaluate credentials
if credentials.0 == "" || credentials.1 < 0 {
    print("Invalid credentials!")
} else {
    print("The username is \(credentials.0) and the password is \(credentials.1)")
}

// Step 3: Store the app’s full credentials
let fullCredentials = (user: "Andru", passcode: 1111)

// Step 4: Revaluate credentials
if fullCredentials.user == "" || fullCredentials.passcode < 0 {
    print("Invalid credentials!")
} else {
    print("The username is \(fullCredentials.user) and the password is \(fullCredentials.passcode)")
}

