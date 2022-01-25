//
//  AddTask.swift
//  Reminders Multiplatform
//
//  Created by Devon Kenneth Hansen on 2022-01-25.
//

import SwiftUI

struct AddTask: View {
    
    //Get a reference toi the store of tasks (TaskStore)
    @ObservedObject var store: TaskStore
    
    @State private var description = ""
    @State private var priority = TaskPriority.low
    
    //Whether to show this view
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("description", text: $description)
                    
                    Picker("Priority", selection: $priority) {
                        Text(TaskPriority.low.rawValue).tag(TaskPriority.low)
                        Text(TaskPriority.medium.rawValue).tag(TaskPriority.medium)
                        Text(TaskPriority.high.rawValue).tag(TaskPriority.high)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            .navigationTitle("New Reminder")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Save") {
                        saveTask()
                    }
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        //dissmiss the sheet by changing the showing value to false
                        showing = false
                    }
                }
            }
            
        }
    }
    
    func saveTask() {
        
        //add the task to the task list
        store.tasks.append(Task(description: description, priority: priority, completed: false))
        
        //dismiss this view by changing bool to false
        showing = false
        
    }
    
}

struct AddTask_Previews: PreviewProvider {
    static var previews: some View {
        AddTask(store: testStore, showing: .constant(true))
    }
}
