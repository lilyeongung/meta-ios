//
//  MenuItem.swift
//  LittleLemonDinnerMenu
//
//  Created by Andrew Park on 6/12/24.
//

import Foundation
import SwiftUI

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var category: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredient: [Ingredient] { get set }
}

struct MenuItem: Identifiable, Hashable, MenuItemProtocol {
    var id = UUID()
    var price: Double
    var title: String
    var category: MenuCategory
    var ordersCount: Int
    var ingredient: [Ingredient]
}

