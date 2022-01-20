//
//  TaskStore.swift
//  Reminders Multiplatform (iOS)
//
//  Created by Devon Kenneth Hansen on 2022-01-20.
//

import Foundation

class TaskStore: ObservableObject {
    @Published var tasks: [Task]
    
    init(tasks: [Task} = []) {
        self.tasks = tasks
    }
}

let taskStore = TaskStore(tasks: testData)
