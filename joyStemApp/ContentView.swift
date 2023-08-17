//
//  ContentView.swift
//  ToDoList
//
//  Created by Adrianne Nguyen on 8/15/23.
//

import SwiftUI

@main
struct ToDoList: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List ")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                
                Spacer()
                
                Button(action: {
                    self.showNewTask = true
                }) {
                Text("+")
                }
            
                Spacer()
            
            }
            .padding()
            
        }
        .padding()
        
        List {
            ForEach (toDoItems) { toDoItem in
                            Text(toDoItem.title)
                        }
        }
        
        if showNewTask {
            NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
