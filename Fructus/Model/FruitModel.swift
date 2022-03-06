//
//  FruitModel.swift
//  Fructus
//
//  Created by Ferox on 1/27/22.
//

import SwiftUI

//MARK: - Data Model

struct Fruit: Identifiable, Comparable {
    static func < (lhs: Fruit, rhs: Fruit) -> Bool {
        lhs.title < rhs.title
    }
    
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
