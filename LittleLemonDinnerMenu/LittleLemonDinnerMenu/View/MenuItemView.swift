//
//  MenuItemView.swift
//  LittleLemonDinnerMenu
//
//  Created by Andrew Park on 6/12/24.
//

import SwiftUI

struct MenuItemView: View {
    let menuCategory: MenuCategory
    let items: [MenuItem]
    
    let threeColumnGrid: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(menuCategory.rawValue)
                .font(.title)
            
            LazyVGrid(columns: threeColumnGrid, spacing: 7) {
                ForEach(items, id: \.self) { item in
                    VStack {
                        NavigationLink(destination: MenuItemDetailsView(menuItem: item)) {
                            Rectangle()
                                .frame(height: 95)
                                .foregroundColor(.black)
                        }
                        Text(item.title)
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    MenuItemView(menuCategory: .food, items: mockFoodItems)
}
