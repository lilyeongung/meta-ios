//
//  ReservationForms.swift
//  Reservations
//
//  Created by Andrew Park on 5/19/24.
//
// State Property Wrapper tells SwiftUI to move its storage out from the structure and into shared storage managed by swiftUI

import SwiftUI

struct ReservationForms: View {
    @State var customerName: String
    
    var body: some View {
        Form {
            TextField("Type Your Name",
                      text: $customerName,
                      onEditingChanged: { status in
                print(status)
            })
                .onChange(of: customerName, { oldValue, newValue in
                    print(newValue)
                })
            
                .onSubmit {
                    print("Submitted")
                }
                .padding()
        }
    }
}

#Preview {
    ReservationForms(customerName: "")
}
