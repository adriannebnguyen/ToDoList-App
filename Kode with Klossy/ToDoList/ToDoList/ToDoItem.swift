//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Adrianne Nguyen on 8/15/23.
//

import Foundation

class ToDoItem: Identifiable {
    var title = ""
    var isImportant = false
    var id = UUID()
    
    init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}
