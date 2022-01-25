//
//  ContentView.swift
//  Shared
//
//  Created by Devon Kenneth Hansen on 2022-01-20.
//

import SwiftUI

struct ContentView: View {
    
    //stores all tasks
   @ObservedObject var store: TaskStore
    
    //controls whether the add task view is showing
    @State private var showingAddTask = false
    
    
    var body: some View {
        List {
            ForEach(store.tasks) { task in
                TaskCell(task: task)
            }
        //view modifier invokes the function onteh view model
            .onDelete(perform: store.deleteItems)
            
        }
        .navigationTitle("Reminders")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Add") {
                    showingAddTask = true
                }
            }
        }
        .sheet(isPresented: $showingAddTask) {
            AddTask(store: store, showing: $showingAddTask)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(store: testStore)
        }
    }
}
