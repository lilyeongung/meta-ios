//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Andrew Park on 6/12/24.
//

import SwiftUI

struct MenuItemsView: View {
    @StateObject private var viewModel = MenuViewViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                if viewModel.isCategoryFood {
                    MenuItemView(menuCategory: .food, items: viewModel.foodItems)
                }
                if viewModel.isCategoryDrink {
                    MenuItemView(menuCategory: .drink, items: viewModel.drinkItems)
                }
                if viewModel.isCategoryDessert {
                    MenuItemView(menuCategory: .dessert, items: viewModel.dessertItems)
                }
                else {
                    Text("No categories selected")
                        .padding(.top, 250)
                }
            }
            // TODO: implement sorting, update -> .onAppear()?
            
            .navigationTitle("Menu")
            .navigationBarItems(trailing: Button(action: {
                viewModel.showOptions.toggle()
            }) {
                Image(systemName: "slider.horizontal.3")
            })
            
            
            .sheet(isPresented: $viewModel.showOptions) {
                MenuItemsOptionView().environmentObject(viewModel)
            }
        }
    }
}





#Preview {
    MenuItemsView()
}



// MARK: .navigationBarItems vs .toolbar
// .navigationBarItems available in iOS versions before 15 - simpler customization only in iOS
// MARK: .toolbar for newer SwiftUI projects targeting iOS 15+ and when need to customize toolbar items across multiple platforms
//            .toolbar {
//                Button(action: {
//                    viewModel.showOptions.toggle()
//                }, label: {
//                    Image(systemName: "slider.vertical.3")
//                })
//            }
