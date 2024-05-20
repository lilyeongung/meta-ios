//
//  ListView.swift
//  Advanced SwiftUI
//
//  Created by Andrew Park on 5/20/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Item: Identifiable {
    let id = UUID()
    let name: String
}

#Preview {
    ListView()
}
