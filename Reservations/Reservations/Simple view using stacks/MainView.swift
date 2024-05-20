//
//  MainView.swift
//  Reservations
//
//  Created by Andrew Park on 5/19/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            HStack(spacing: 8) {
                Text("Demo")
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                VStack(spacing: 10) {
                    Text("Little Lemon")
                        .font(.title)
                    Text("Tomato Tortellini, Bottarga and carbonara")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                }
                .padding()
            }
            .padding()
        }
    }
}

#Preview {
    MainView()
}
