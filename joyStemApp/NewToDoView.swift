//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Adrianne Nguyen on 8/15/23.
//

import SwiftUI

struct NewToDoView: View {
    
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems: [ToDoItem]

    var body: some View {
        VStack {
            Text("Task title")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Enter the task description...")
                .padding()
                .background(Color(UIColor.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
                    .font(.title2)
            }
            .padding()
            
            Button(action: {
                self.addTask(title: self.title, isImportant: self.isImportant)
                
            }) {
                Text("Add")
            }
            .padding()
            
        }
    }
    
    private func addTask(title: String, isImportant: Bool = false)
        {
        
        let task = ToDoItem(title: title, isImportant: isImportant)
        toDoItems.append(task)
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, toDoItems: .constant([]))
    }
}
