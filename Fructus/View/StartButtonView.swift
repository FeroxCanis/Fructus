//
//  StartButtonView.swift
//  Fructus
//
//  Created by Ferox on 1/24/22.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - Properties
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - Body
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                    .foregroundColor(.white)
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 13)
            .padding(.vertical, 8)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }

    }//: Button
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
