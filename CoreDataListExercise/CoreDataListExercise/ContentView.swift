import SwiftUI
import CoreData

struct ContentView: View {
    // Step 4: NSManagedObjectContext is retrieved from the environment and stored in viewContext.
    @Environment(\.managedObjectContext) private var viewContext
    
    // Step 2: Create the Fetch Request -> 3. App (CoreDataListExerciseApp)
    @FetchRequest(sortDescriptors: [],
                  animation: .default)
    // Pass in results
    private var desserts: FetchedResults<Dessert>
        
    var body: some View {
        NavigationView{
            VStack{
                Text("DESSERTS")
                    .font(.title)
                List {
                    ForEach(desserts) { dessert in
                        VStack(alignment:.leading){
                            Text (dessert.name!)
                                .font(.system(size: 16, weight: .bold))

                            HStack{
                                Text (dessert.size!)
                                Spacer()
                                Text("$\(dessert.price, specifier: "%.2f")")
                                    .foregroundColor(.gray)
                                    .font(.callout)
                            }
                        }
                    }
                }
            }
           .onAppear{createDesserts()}
        }
    }
    
    
    // Step 1: Create desserts
    func createDesserts() {
        let profiterole = Dessert(context: viewContext)
        profiterole.name = "Profiterole"
        profiterole.size = "Large"
        profiterole.price = 2.99

        let cremeBurlee = Dessert(context: viewContext)
        cremeBurlee.name = "Crème Brulée"
        cremeBurlee.size = "Medium"
        cremeBurlee.price = 3.99

        let iceCream = Dessert(context: viewContext)
        iceCream.name = "Ice Cream"
        iceCream.size = "Extra Large"
        iceCream.price = 5.99

        let applePie = Dessert(context: viewContext)
        applePie.name = "Apple Pie"
        applePie.size = "Small"
        applePie.price = 2.99

        let imperatrice = Dessert(context: viewContext)
        imperatrice.name = "Riz à l'impératrice"
        imperatrice.size = "Small"
        imperatrice.price = 2.99

        let cheeseCake = Dessert(context: viewContext)
        cheeseCake.name = "Cheese Cake"
        cheeseCake.size = "Extra Small"
        cheeseCake.price = 4.99

        let carrotCake = Dessert(context: viewContext)
        carrotCake.name = "Carrot Cake"
        carrotCake.size = "Standard"
        carrotCake.price = 3.99

        let piece = Dessert(context: viewContext)
        piece.name = "Pièce montée"
        piece.size = "Medium"
        piece.price = 5.99

        let eclair = Dessert(context: viewContext)
        eclair.name = "Éclair"
        eclair.size = "Large"
        eclair.price = 3.99

        let crepe = Dessert(context: viewContext)
        crepe.name = "Crêpe Suzette"
        crepe.size = "Extra Large"
        crepe.price = 3.99
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



