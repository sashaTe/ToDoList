//
//  ItemModel.swift
//  ToDoList
//
//  Created by Alexander Zarutskiy on 24.04.2023.
//

import Foundation

struct ItemModel: Identifiable {
    var id: String = UUID().uuidString
    
    let title: String
    let isComplited: Bool
}


