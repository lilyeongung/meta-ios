//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Andrew Park on 6/12/24.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: MenuViewViewModel
    
    var body: some View {
        NavigationView {
            List {
                
                // MARK: implement filtering -> toggle?
                Section("Selected Categories") {
//                    ForEach(MenuCategory.allCases, id: \.self) { category in
//                        // when i loop through the enum, create a toggle for each category (food, drink, dessert)
//                        // how can I check a diff condition for each category?
//                        if category.rawValue == "Food" {
//                            Toggle(category.rawValue, isOn: $viewModel.isCategoryFood)
//                        }
//                        if category.rawValue == "Drink" {
//                            Toggle(category.rawValue, isOn: $viewModel.isCategoryDrink)
//
//                        }
//                        if category.rawValue == "Dessert" {
//                            Toggle(category.rawValue, isOn: $viewModel.isCategoryDessert)
//
//                        }
//                    }
                    
                    // straightfoward but have to create additional toggles to scale
//                    Toggle(MenuCategory.food.rawValue, isOn: $viewModel.isCategoryFood)
//                    Toggle(MenuCategory.drink.rawValue, isOn: $viewModel.isCategoryDrink)
//                    Toggle(MenuCategory.dessert.rawValue, isOn: $viewModel.isCategoryDessert)
                    
                    // MARK: - Most scalable solution
                    // Create the dictionary mapping each category to its corresponding binding
                    let categoryToggles: [MenuCategory: Binding<Bool>] = [
                        .food: $viewModel.isCategoryFood,
                        .drink: $viewModel.isCategoryDrink,
                        .dessert: $viewModel.isCategoryDessert
                    ]
                    
                    // Use ForEach to loop through the categories and create the toggles
                    ForEach(MenuCategory.allCases, id: \.self) { category in
                        if let binding = categoryToggles[category] {
                            Toggle(category.rawValue, isOn: binding)
                        }
                    }

                    
                    
                }
                // MARK: implement sorting -> picker
                Section("Sort By") {
                    ForEach(SortBy.allCases, id: \.self) { sortOption in
                        Text(sortOption.rawValue)
                    }
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Filter")
            .navigationBarItems(trailing: Button("Done") {
                // dismiss how???
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}


#Preview {
    MenuItemsOptionView().environmentObject(MenuViewViewModel())
}
