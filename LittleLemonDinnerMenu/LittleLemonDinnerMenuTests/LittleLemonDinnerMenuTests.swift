//
//  LittleLemonDinnerMenuTests.swift
//  LittleLemonDinnerMenuTests
//
//  Created by Andrew Park on 6/13/24.
//

import XCTest
@testable import LittleLemonDinnerMenu

final class LittleLemonDinnerMenuTests: XCTestCase {
    // Bring in test data
    let test = MenuViewViewModel()
    
    // Test case for menu item title, when initializing with title, expect menu item title to equal initialized value
    func test_menuItemTitle_init_titleEqualsInitValue() {
        let menuItem = test.foodItems[0]
        XCTAssertEqual(menuItem.title, "Food 1")
    }
    
    // Test case for menu item ingredients, when initializing with ingredients, expect the ingredients to equal initialized value
    func test_menuItemIngredients_init_ingredientsEqualsInit() {
        let item = test.foodItems[0]
        XCTAssertEqual(item.ingredient, [.spinach, .broccoli, .carrot, .pasta])
    }

}
