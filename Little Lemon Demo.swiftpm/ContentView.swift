import SwiftUI

struct ContentView: View {
    @State var showLogo = true
    var body: some View {
        VStack {
            if showLogo {
                LittleLemonLogo(bindingVariable: $showLogo)
            }
        }
    }
}
#Preview {
    ContentView()
}
