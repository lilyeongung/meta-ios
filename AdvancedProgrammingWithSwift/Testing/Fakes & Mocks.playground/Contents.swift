import UIKit
import Foundation
import XCTest

// MARK: - Using Fakes to simplify complex code
protocol NetworkManager {
    func getMealsList() -> [String]
}
class MenuManager {
    
    let networkManager: NetworkManager
    
    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
    
    func allMeals() -> String {
        return networkManager.getMealsList().joined(separator: ",")
    }
}
class FakeNetworkManager: NetworkManager {
    func getMealsList() -> [String] {
        return ["Soda", "Milkshake"]
    }
}

let menu = MenuManager(networkManager: FakeNetworkManager())
let allMeals = menu.allMeals()
XCTAssertEqual(allMeals, "Soda,Milkshake")


// MARK: - Using Mocks
// mock can verify that a particular function of the mocked object has been called with the correct parameters.
protocol NetworkManager {
    func createNewsletterSubscription(email: String)
}

class NewsletterManager {
    let networkManager: NetworkManager
    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
    func subscribe(email: String) {
        networkManager.createNewsletterSubscription(email: email)
    }
}
// Suppose you want to test that when subscribing a customer to the newsletters, the call to the NetworkManager is done only once per subscription and with the correct email address.

// How would you do that? The answer is; using a mock.
class MockNetworkManager: NetworkManager {
    var howManyTimesFunctionWasCalled = 0
    var emailTheFunctionReceived = ""
    
    func createNewsletterSubscription(email: String) {
        howManyTimesFunctionWasCalled += 1
        emailTheFunctionReceived = email
    }
}
let mockNetworkManager = MockNetworkManager()
let newsletter = NewsletterManager(networkManager: mockNetworkManager)
let email = "example@email.com"
newsletter.subscribe(email: email)
XCTAssertEqual(mockNetworkManager.howManyTimesFunctionWasCalled, 1)
XCTAssertEqual(mockNetworkManager.emailTheFunctionReceived, email)
// XCTAssertEqual used to verify that the mocked network manager class has recorded the correct data, meaning – the function to create the subscription should have been called only once, and the correct email should have been used. 
