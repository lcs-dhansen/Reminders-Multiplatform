//
//  Task.swift
//  Reminders Multiplatform (iOS)
//
//  Created by Devon Kenneth Hansen on 2022-01-20.
//

import Foundation

struct Task Identifiable {
    var id = UUID()
    var description: String
    var priority: TaskPriority
    var completed: Bool
}

let testData = {
    Task(description: "increase my physical health", priority: .high, completed: false),
    Task(description: "get caught up on work", priority: .medium, completed: false),
    Task(description: "enjoy myself", priority: .low, completed: true),
}
