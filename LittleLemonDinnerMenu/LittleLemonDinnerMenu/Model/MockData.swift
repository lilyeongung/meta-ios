//
//  MockData.swift
//  LittleLemonDinnerMenu
//
//  Created by Andrew Park on 6/12/24.
//

import Foundation

let mockFoodItems: [MenuItem] = (1...12).map { food in
    MenuItem(price: Double.random(in: 2...69.0), title: "Food \(food)", category: .food, ordersCount: Int.random(in: 9...10001), ingredient: [.spinach, .broccoli, .carrot, .pasta])
}

let mockDrinkItems: [MenuItem] = (1...8).map { drink in
    MenuItem(price: Double.random(in: 2...69.0), title: "Drink \(drink)", category: .drink, ordersCount: Int.random(in: 9...10001), ingredient: [.orange, .blueberry, .strawberry])
}

let mockDessertItems: [MenuItem] = (1...4).map { dessert in
    MenuItem(price: Double.random(in: 2...69.0), title: "Dessert \(dessert)", category: .dessert, ordersCount: Int.random(in: 9...10001), ingredient: [.chocolate, .strawberry, .iceCream])
}
