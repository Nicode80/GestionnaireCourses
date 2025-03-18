//
//  Ingredient.swift
//  GestionnaireCourses
//
//  Created by Nicolas Constantin on 17/03/2025.
//

import SwiftData
import Foundation

@Model
final class Ingredient {
    var name: String
    var unit: String
    var category: String?

    init(name: String, unit: String, category: String? = nil) {
        self.name = name
        self.unit = unit
        self.category = category
    }
}
