//
//  ImplementUnitTestingTests.swift
//  ImplementUnitTestingTests
//
//  Created by Andrew Park on 5/22/24.
//
// 1. Import the application module to be able to test its code
import XCTest
@testable import ImplementUnitTesting

final class Unit_Tests: XCTestCase {
    // 2. Create a test function for 20% of tax
    func test_calculateTotal_salesTaxTwentyPercent() {
        // 3. Arrange data by creating an array of items and tax percentage constant
        let items = [CheckoutItem(name: "Fish and Chips", price: 625),
                     CheckoutItem(name: "Cheeseburger", price: 850),
                     CheckoutItem(name: "Milkshake", price: 325),
                     CheckoutItem(name: "Black Coffee", price: 175)]
        let taxPercentage = 20
        // 4. Act by calling the calculateTotal function with the test data
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        // 5. Assert that the result is as expected
        XCTAssertEqual(totalToPay, 2370)
    }
  

}
