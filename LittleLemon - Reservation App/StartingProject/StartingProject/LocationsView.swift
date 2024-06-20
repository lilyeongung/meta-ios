import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model:Model
    
    var body: some View {
        VStack {
            // MARK: - Task 2: Add the logo view to LocationsView -> 3.MainView
            LittleLemonLogo() // 1
                .padding(.top, 50)
            
            // MARK: - Task 4: Step 1: Create a Text element containing one of two strings
            // Model.swift contains a Boolean variable named displayingReservationForm.
            // Using displayingReservationForm as a controlling variable, add a Text element that shows the string "Reservation Details" if displayingReservationForm is true and Select a location otherwise.
            Text(model.displayingReservationForm ? "Reservation Details" : "Select a location") // 2
            .padding([.leading, .trailing], 40)
            .padding([.top, .bottom], 8)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)
            
            // MARK: - Task 5: Step 2: Create a List inside a NavigationView
            NavigationView {
                List(model.restaurants, id: \.self) { restaurant in
                   
                    // MARK: - Task 6: Step 3: Add a NavigationLink to the List, Embedded each restaurant item in a NavigationLink to navigate to the ReservationForm. -> 7.ReservationForm
                    NavigationLink(destination: ReservationForm(restaurant)) {
                        RestaurantView(restaurant)
                    }
                } // 3
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .listStyle(.plain)
                .padding(20)
            }
        }
        .padding(.top, -10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView().environmentObject(Model())
    }
}

