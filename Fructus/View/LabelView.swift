//
//  LabelView.swift
//  Fructus
//
//  Created by Ferox on 2/2/22.
//

import SwiftUI

struct LabelView: View {
    
    var label: String
    var image: String
    
    var body: some View {
        HStack {
            Text(label.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: image)
        }
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(label: "Fructus", image: "info.circle")
    }
}
