//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Ferox on 2/1/22.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - Properties
    
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    //MARK: - Body
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }//: ZStack
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[4])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
