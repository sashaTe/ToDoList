//
//  AddView.swift
//  ToDoList
//
//  Created by Alexander Zarutskiy on 21.04.2023.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    @State var someColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type somethig here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(someColor))
                .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
            }
            .padding(15 )
                   
                
        }
        
        .navigationTitle("Add an Item🖊")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        
    }
}
