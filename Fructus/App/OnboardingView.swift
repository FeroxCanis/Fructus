//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ferox on 1/24/22.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        ZStack {
            Color(.init(gray: 0.1, alpha: 0.3))
                .ignoresSafeArea()
            
            TabView{
                ForEach(fruits[0...5]) { item in
                    FruitCardView(fruit: item)
                }//: Loop
            }//: TabView
            .tabViewStyle(PageTabViewStyle())
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
            .preferredColorScheme(.light)
    }
}
