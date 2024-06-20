//
//  MenuViewViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by Andrew Park on 6/12/24.
//

import Foundation

class MenuViewViewModel: ObservableObject {
    @Published var showOptions = false
    @Published var isCategoryFood = true
    @Published var isCategoryDrink = true
    @Published var isCategoryDessert = true

    @Published var foodItems: [MenuItem] = mockFoodItems
    @Published var drinkItems: [MenuItem] = mockDrinkItems
    @Published var dessertItems: [MenuItem] = mockDessertItems
    
//  TODO: - Implement sorting functionality ***
//    @Published var sortBy = false
//    @Published var selectedCategory: MenuCategory? 
    

 
}
    
    




