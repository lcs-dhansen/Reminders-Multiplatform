//
//  Task.swift
//  Reminders Multiplatform (iOS)
//
//  Created by Devon Kenneth Hansen on 2022-01-20.
//

import Foundation

class Task: Identifiable, ObservableObject {
    
    var id = UUID()
    var description: String
    var priority: TaskPriority
    @Published var completed: Bool
    
    internal init(id: UUID = UUID(), description: String, priority: TaskPriority, completed: Bool) {
        self.id = id
        self.description = description
        self.priority = priority
        self.completed = completed
    }
    
}

let testData = [
    Task(description: "increase my physical health", priority: .high, completed: true),
    Task(description: "get caught up on work", priority: .medium, completed: false),
    Task(description: "enjoy myself", priority: .low, completed: true),
]
