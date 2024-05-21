//
//  GestureRecognizer.swift
//  Advanced SwiftUI
//
//  Created by Andrew Park on 5/20/24.
//

import SwiftUI

struct GestureRecognizer: View {
    @State private var flag = false
    
    var body: some View {
        Text("Tap Me")
            .font(.largeTitle)
            .padding(15)
            .background(flag ? .green : .yellow)
            .onTapGesture {
                flag.toggle()
            }
    }
}

#Preview {
    GestureRecognizer()
}
