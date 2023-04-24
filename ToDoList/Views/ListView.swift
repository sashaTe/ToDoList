 //
//  ListView.swift
//  ToDoList
//
//  Created by Alexander Zarutskiy on 21.04.2023.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [ItemModel(title: "This is the first item", isComplited: false),
    ItemModel(title: "This is the second item", isComplited: true),
    ItemModel(title: "Third", isComplited: true)]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
        }
        .listStyle(.plain)
        .navigationTitle("ToDo List📝")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Add", destination: AddView()
            )}
                               
        }
    }
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        
    }
}

