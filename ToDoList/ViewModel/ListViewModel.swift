//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Alexander Zarutskiy on 24.04.2023.
//

import Foundation

class ListViewModel: ObservableObject {
   @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [ItemModel(title: "This is the first item", isComplited: false),
                        ItemModel(title: "This is the second item", isComplited: true),
                        ItemModel(title: "Third", isComplited: true)]
        items.append(contentsOf: newItems)
    }
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isComplited: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
//       if let index = items.firstIndex { existingItem in
            
//        }
    }
}
