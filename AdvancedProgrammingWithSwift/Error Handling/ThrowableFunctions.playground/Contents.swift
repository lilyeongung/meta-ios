import UIKit

enum PasswordValidationError: Error {
    case passwordTooShort
}

func validatePassword(password: String) throws {
    if password.count <= 6 {
        throw PasswordValidationError.passwordTooShort
    }
}
// MARK: - Error Handling
// Suppose you are creating a calculator application. To report errors for invalid math operations, you will write throwable functions. You will also call the functionality and handle errors with do-catch.

// Step 1: Create a class to represent a calculator
class Calculator {
    // Step 2: Create a division function
    func divide(x: Double, y: Double) throws -> Double {
        if y == 0 {
            throw CalculatorError.divisionByZero  // // Step 6: Check for division by zero inside your function and throw an error

        }
        return x / y
    }
}

//Step 5: Create a custom enumeration for errors
enum CalculatorError: Error {
    case divisionByZero
}


// Step 3: Initialize the class to a constant
let calculator = Calculator()

// Step 4: Call the function to divide two numbers
do {       // Step 7: Use do-catch on your function call to handle thrown errors
    let successfulResult = try calculator.divide(x: 10, y: 2)
    print(successfulResult)
    let invalidResult = try calculator.divide(x: 1, y: 0)   // Step 8: Create success and failure scenarios for calling the division function
}
catch CalculatorError.divisionByZero {
    print("Division by zero detected and not allowed")
}

// MARK: - Using defer with do-catch
//        // Have to file.close twice and redundant
//        let file = open("file.txt", 1)


//        do {
//            let result = try readFile(file)
//
//            file.close()
//        } catch {
//            file.close()
//        }
//
//
//
//        // optimized using defer statement
//        let file2 = open("file2.txt", 2)
//
//
//        do {
//            defer {
//                file2.close()
//            }
//
//            let result = try readFile(file2)
//        } catch {
//            // Handle errors here
//        }
