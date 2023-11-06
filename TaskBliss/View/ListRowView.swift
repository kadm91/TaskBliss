//
//  ListRowView.swift
//  TaskBliss
//
//  Created by Kevin Martinez on 11/6/23.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    
    var body: some View {
        
        
        Label(
            title: { Text(title) },
            icon: {  Image(systemName: "checkmark.circle") }
        )
    }
}

#Preview {
    ListRowView(title: "This is the first item!")
}
