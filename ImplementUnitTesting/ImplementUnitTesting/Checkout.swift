//
//  Checkout.swift
//  ImplementUnitTesting
//
//  Created by Andrew Park on 5/22/24.
//

import Foundation
// CheckoutItem defined that represents an item in the menu of the Little Lemon restaurant.
struct CheckoutItem {
    let name: String
    let price: Int
}

func calculateTotal(items: [CheckoutItem], localTaxPercent: Int) -> Int {
    let itemsTotal = items.reduce(0) { $0 + $1.price }
    let taxAmount = itemsTotal * localTaxPercent / 100
    return itemsTotal + taxAmount
}
