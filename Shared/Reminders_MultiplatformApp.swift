//
//  Reminders_MultiplatformApp.swift
//  Shared
//
//  Created by Devon Kenneth Hansen on 2022-01-20.
//

import SwiftUI

@main
struct Reminders_MultiplatformApp: App {
    
    @StateObject private var store = TaskStore(tasks: testData)
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(store: store)
            }
        }
    }
}
