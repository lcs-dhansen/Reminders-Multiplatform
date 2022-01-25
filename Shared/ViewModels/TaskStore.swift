//
//  TaskStore.swift
//  Reminders Multiplatform (iOS)
//
//  Created by Devon Kenneth Hansen on 2022-01-20.
//

import Foundation

class TaskStore: ObservableObject {
    
    // MARK: stored properties
    @Published var tasks: [Task]
    
    
    // MARK: Initializers
    init(tasks: [Task] = []) {
        self.tasks = tasks
    }
    
    // MARK: Functions
    func deleteItems(at offsets: IndexSet) {
        //offset contains items selected for deletion
        // the set is then passed to the built in remove method
        tasks.remove(atOffsets: offsets)
    }
}

let testStore = TaskStore(tasks: testData)
