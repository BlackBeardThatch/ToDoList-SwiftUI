//
//  ContentView.swift
//  ToDoList
//
//  Created by Jason Hung on 2023/7/2.
//

import SwiftUI

struct ToDoListView: View {
    
    var toDos = ["Learn Swift",
                 "Build App",
                 "Change the World",
                 "Birng the Awesome",
                 "take a Vacation"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }

                    
                }
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
