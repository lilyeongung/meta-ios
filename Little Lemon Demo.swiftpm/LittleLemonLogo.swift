//
//  LittleLemonLogo.swift
//  Little Lemon Demo
//
//  Created by Andrew Park on 5/19/24.
//

import SwiftUI

struct LittleLemonLogo: View {
    @Binding var bindingVariable: Bool
    
    var body: some View {
        VStack {
            Image("littleLemonLogo")
            Button(action: {
                bindingVariable.toggle()
            }, label: {
                Text("Toggle logo visibility")
                    .font(.title2)
            })
        }
    }
}

