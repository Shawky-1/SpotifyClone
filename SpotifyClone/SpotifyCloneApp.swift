//
//  SpotifyCloneApp.swift
//  SpotifyClone
//
//  Created by Ahmed Alabiad on 26/04/2023.
//

import SwiftUI

@main
struct SpotifyCloneApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
