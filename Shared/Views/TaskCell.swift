//
//  TaskCell.swift
//  Reminders Multiplatform
//
//  Created by Devon Kenneth Hansen on 2022-01-21.
//

import SwiftUI

struct TaskCell: View {
    
   @ObservedObject var task: Task
    
    var body: some View {
        HStack {
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .onTapGesture {
                    ////debug code in comment
//                        print("State of list BEFORE toggle")
//                        for (index, task) in store.tasks.enumerated() {
//                            print("Task at \(index) has completed value of \(task.completed)")
//                        }
//                        print("about to toggle")
                    task.completed.toggle()
//
//                        print("just toggled")
//                        //current state of the list
//                        print("State of the list AFTER toggle")
//                        for (index, task) in store.tasks.enumerated() {
//                            print("Task at \(index) has completed value of \(task.completed)")
//                        }
                }
            
            Text(task.description)
        }
    }
}

struct TaskCell_Previews: PreviewProvider {
    static var previews: some View {
        TaskCell(task: testData[0])
        TaskCell(task: testData[1])
    }
}
