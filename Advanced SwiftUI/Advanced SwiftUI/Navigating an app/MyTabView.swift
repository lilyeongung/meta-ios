//
//  MyTabView.swift
//  Advanced SwiftUI
//
//  Created by Andrew Park on 5/20/24.
//
// Flat navigation is where all the views a user can possibly navigate to derive from the one there on


import SwiftUI

struct MyTabView: View {
    var body: some View {
        Text("This is a another view")
        TabView {
            Text("Share View")
                .tabItem({
                    Label("Share", systemImage: "square.and.arrow.up")
                })
            
            Text("Trash Tab")
                 .tabItem({
                     Label("", systemImage: "trash")
                 })
        }
    }
}

#Preview {
    MyTabView()
}
