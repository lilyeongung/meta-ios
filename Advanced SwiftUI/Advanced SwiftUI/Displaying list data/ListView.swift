//
//  ListView.swift
//  Advanced SwiftUI
//
//  Created by Andrew Park on 5/20/24.
//

import SwiftUI

struct ListView: View {
    @ObservedObject private var model = Model()
    
    
    var body: some View {
        VStack {
            List {
                ForEach(model.meals) { item in
                    Text(item.name)
                }
            }
        }
    }
}

struct Item: Identifiable {
    let id = UUID()
    let name: String
}

class Model: ObservableObject {
    @Published var meals: [Item] = menuItems()
    
    static func menuItems() -> [Item] {
        return [
            Item(name: "Lasagna"),
            Item(name: "Fettuccini Alfredo"),
            Item(name: "Spaghetti"),
            Item(name: "Avocado Toast"),
            Item(name: "Tortellini"),
            Item(name: "Pizza")
        ]
    }
}

#Preview {
    ListView()
}
