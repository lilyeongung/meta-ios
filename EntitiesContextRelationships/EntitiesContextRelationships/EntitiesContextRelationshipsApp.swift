//
//  EntitiesContextRelationshipsApp.swift
//  EntitiesContextRelationships
//
//  Created by Andrew Park on 6/17/24.
//

import SwiftUI

@main
struct EntitiesContextRelationshipsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
