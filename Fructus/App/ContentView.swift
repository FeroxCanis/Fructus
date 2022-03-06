//
//  ContentView.swift
//  Fructus
//
//  Created by Ferox on 1/24/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    
    @State var queryString: String = ""
    
    var fruits: [Fruit] = fruitsData
    
    @State private var isShowingSettings: Bool = false
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(queryString.isEmpty ? fruits.sorted() : fruits.filter {$0.title.contains(queryString)}) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }

            }
        }//: NavigationView
        .searchable(text: $queryString)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .preferredColorScheme(.light)
    }
}
