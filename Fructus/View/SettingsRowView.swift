//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Ferox on 2/2/22.
//

import SwiftUI

struct SettingsRowView: View {
    
    var label: String
    var answer: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        HStack {
            Divider()
                .padding(.vertical, 5)
            Text(label)
                .foregroundColor(.gray)
            Spacer()
            if (answer != nil) {
                Text(answer!)
            } else if linkLabel != nil && linkDestination != nil {
                Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
            } else {
                EmptyView()
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(label: "shit", answer: "oskol")
    }
}
