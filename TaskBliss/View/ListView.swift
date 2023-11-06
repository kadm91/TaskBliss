//
//  ListView.swift
//  TaskBliss
//
//  Created by Kevin Martinez on 11/6/23.
//

import SwiftUI

struct ListView: View {
    
    //MARK: - Properties
    
    @State var items: [String] = [
        "This is the first item!",
        "This is the second!",
        "Third!"
    ]
    
    //MARK: - View Main body
    
    var body: some View {
        List {
            ForEach (items, id: \.self) { item in
                ListRowView(title: item)
            }
           
            
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle("TodoBliss 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink ("Add", destination: AddView())
        )
    }
}


//MARK: - Preview

#Preview {
   NavigationStack {
        ListView()
   }

}


