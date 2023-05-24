//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Alexander Zarutskiy on 21.04.2023.
//

import SwiftUI
/*
 MVVM
 Model - data point
 View - UI
 ViewModel = manages Models for View
 */
@main
struct ToDoListApp: App {
    
  @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
