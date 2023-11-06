//
//  AddView.swift
//  TaskBliss
//
//  Created by Kevin Martinez on 11/6/23.
//

import SwiftUI

struct AddView: View {
    
  //MARK: - Properties
    
    @State var textFiedlText: String = ""
    
    //MARK: - view main body
    var body: some View {
        
        Form {
            
            titleSecction
            saveBtnSection
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Add an Item 🖊️")
    }
    
    
    //MARK: - titleSecction View
    
    var titleSecction: some View {
        Section {
            LabeledContent {
                TextField("Type somehting here...", text: $textFiedlText)
            } label: {
                Text("Title: ")
            }
        }
    }
    
    //MARK: - saveBtnSection View
    
    var saveBtnSection: some View {
        Section {
            Button {
                
            } label: {
                Text("save".uppercased())
                    .font(.headline)
                    .frame(maxHeight: .infinity)
                    .frame(maxWidth: .infinity)
            }
           
            .listRowBackground(Color.clear)
            .tint(.accentColor)
            .buttonStyle(.bordered)
        }
        .listSectionSpacing(15)
    }
    
    
    
    
}

#Preview {
    NavigationStack {
        AddView()
    }
}
