/*
 You will work with functions, loops, conditional statements, switch statements, structures and classes to create the bank account simulator’s functionality.
 
 The bank account simulator’s operations are implemented with functions and grouped together in the structure of the project.
 
 The logic of the simulator uses loops to process user input and create valid bank accounts.
 
 Conditional statements and switch statements implement valid bank account operations and make sure the bank account simulator runs smoothly along the way.

 You will create a bank account simulator to:
 - Create valid bank accounts
 - Check the bank account balance
 - Validate withdrawals from bank accounts and deposits to bank accounts
 */



// MARK: - Part 1: Create the bank account
// Create bank debit and credit bank account options.
// Define a class and use loops to create a valid bank account based on the user’s choice.
// Use switch statements to select the right type of bank account from the list of valid bank account types provided by the bank account simulator.

// Step 1: Start the virtual bank system interface
class BankAccountSimulator {
    var isOpened = true
    
    // Step 2: Create a property for the bank account type
    var accountType: String = ""

    func welcomeMessage() {
        print("Welcome to your virtual bank system.")
    }
    
    func onboardCustomerAccountOpening() {
        print("What kind of account would you like to open?")
        
        print("1. Debit account")
        print("2. Credit account")
    }
    
    // Step 3: Create the bank account type based on user input
    func makeAccount(numberPadKey: Int) {
        print("The selected option is \(numberPadKey)")
        
        // Define account type based on user input
        switch numberPadKey {
        case 1:
            accountType = "debit"
        case 2:
            accountType = "credit"
        default:
            print("Invalid input: \(numberPadKey)")
            return
        }
        print("You have opened a \(accountType) account.")
    }
}

import Foundation

// Step 4: Welcoming customer with a virtual bank system instance
let virtualBankSystem = BankAccountSimulator()
virtualBankSystem.welcomeMessage()

// Step 5: Generating user input in the repeat while loop
repeat {
    virtualBankSystem.onboardCustomerAccountOpening()
    let numberPadKey = Int.random(in: 1...3)
    virtualBankSystem.makeAccount(numberPadKey: numberPadKey)
} while virtualBankSystem.accountType == ""



// MARK: - Part 2: Define the bank account's operations
// Configure the bank account to handle different types of operations including withdrawals and deposits.
// Use structures and classes to create valid bank account operations and modularize the code of the project.
// Configure conditional statements to implement the logic of withdrawals from bank accounts and deposits to bank accounts.

// Step 1: Define the bank account structure
struct BankAccount {
    
    // Step 2: Create debit and credit bank balance properties
    var debitBalance = 0
    var creditBalance = 0
    let creditLimit = 100
    
    var debitBalanceInfo: String {
        "Debit balance: $\(debitBalance)"
    }
    var availableCredit: Int {
        creditLimit + creditBalance
    }
    var creditBalanceInfo: String {
        "Available credit: $\(availableCredit)"
    }
    
    // Step 3: Implement the deposit operation for debit and credit bank accounts
    mutating func debitDeposit(_ amount: Int) {
        debitBalance += amount
        print("Debit deposit: $\(amount). \(debitBalanceInfo)")
    }
    mutating func creditDeposit(_ amount: Int) {
        creditBalance += amount
        print("Credit deposit: $\(amount). \(creditBalanceInfo)")
        
        if creditBalance == 0 {
            print("Paid off credit balance.")
        } else if creditBalance > 0 {
            print("Overpaid credit balance.")
        }
    }
    
    // Step 4: Implement the withdrawal operation for debit and credit bank accounts
    mutating func debitWithdraw(_ amount: Int) {
        if amount > debitBalance {
            print("Insufficient fund to withdraw $\(amount). \(debitBalanceInfo)")
        } else {
            debitBalance -= amount
            print("Debit withdraw: $\(amount). \(debitBalanceInfo)")
        }
    }
    mutating func creditWithdraw(_ amount: Int) {
        if amount > availableCredit {
            print("Insufficient credit to withdraw $\(amount). \(creditBalanceInfo)")
        } else {
            creditBalance -= amount
            print("Credit withdraw: $\(amount). \(creditBalanceInfo)")
        }
    }
}

// Step 5: Create a bank account instance
var bankAccount = BankAccount()

// Step 6: Test the debit banking operations
print(bankAccount.debitBalanceInfo)

bankAccount.debitDeposit(100)
bankAccount.debitWithdraw(20)
bankAccount.debitWithdraw(81)

// Step 7: Test the credit banking operations
print(bankAccount.creditBalanceInfo)

bankAccount.creditWithdraw(101)
bankAccount.creditWithdraw(100)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(100)
