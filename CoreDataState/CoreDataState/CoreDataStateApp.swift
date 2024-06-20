import SwiftUI

@main
struct CoreDataStateApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            // Context created and passed Core Data context to ContentView
            ContentView()
                .environment(\.managedObjectContext,   persistenceController.container.viewContext)
        }
    }
}
