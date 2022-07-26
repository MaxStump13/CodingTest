//
//  CodingTestApp.swift
//  CodingTest
//
//  Created by Maximilian Stump on 7/26/22.
//

import SwiftUI

@main
struct CodingTestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ApartmentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
