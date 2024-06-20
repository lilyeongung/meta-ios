//
// CoreDataListExerciseApp.swift



import SwiftUI
import CoreData

@main
struct CoreDataListExerciseApp: App {
    let persistenceController = PersistenceController.shared
    
    init() {
        Dessert.deleteAll(persistenceController.container.viewContext)
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
            // Step 3: Using a command that passes the context to ContentView:
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
