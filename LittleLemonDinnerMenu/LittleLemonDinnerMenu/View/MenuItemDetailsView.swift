//
//  MenuItemDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Andrew Park on 6/12/24.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var menuItem: MenuItem
    
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack {
                    Image("Little Lemon logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                    
                    Text("Price:")
                        .fontWeight(.bold)
//                    Text("10.99")
                    Text("\(menuItem.price, specifier: "%.2f")")
                    
                    
                    Spacer()
                    
                    Text("Ordered:")
                        .fontWeight(.bold)
                    Text("\(menuItem.ordersCount)")
                    
                    Spacer()
                    
                    Text("Ingredients:")
                        .fontWeight(.bold)
                    ForEach(menuItem.ingredient, id: \.self) {
                        Text($0.rawValue)
                    }
//                    Text("spinach")
//                    Text("broccoli")
//                    Text("carrot")
//                    Text("pasta")
//                    Text("tomato sauce")
                }
            }
            .navigationTitle(menuItem.title)
        }
    }
}

#Preview {
    let mockMenuItem2 = mockFoodItems
    
    return MenuItemDetailsView(menuItem: mockMenuItem2.first!)
}
