//
//  ContentView.swift
//  Shared
//
//  Created by Devon Kenneth Hansen on 2022-01-20.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var store: TaskStore
    
    var body: some View {
        List(store.tasks) { task in
            HStack {
                Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                    .onTapGesture {
                        print("State of list BEFORE toggle")
                        for (index, task) in store.tasks.enumerated() {
                            print("Task at \(index) has completed value of \(task.completed)")
                        }
                        print("about to toggle")
                        task.completed.toggle()
                    }
                
                Text(task.description)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: testStore)
    }
}
