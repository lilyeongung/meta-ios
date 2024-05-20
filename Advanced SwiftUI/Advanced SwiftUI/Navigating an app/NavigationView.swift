//
//  ContentView.swift
//  Advanced SwiftUI
//
//  Created by Andrew Park on 5/19/24.
//
// Hierarchical Navigation only displays one view that contains multiple options for navigation


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Exercise 1")
                NavigationLink(destination: EmptyView()){
                    Text("Do something")
                }
            }
            .navigationTitle("Little Lemon")
        }
    }
}

#Preview {
    ContentView()
}
