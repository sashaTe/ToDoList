//
//  ListRowView.swift
//  ToDoList
//
//  Created by Alexander Zarutskiy on 21.04.2023.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isComplited ?
                  "checkmark.circle" : "circle")
            .foregroundColor(item.isComplited ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}
 

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(title: "First item!", isComplited: false)
    static var item2 = ItemModel(title: "Second", isComplited: true)
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
                
        }
     
    }
        
}
