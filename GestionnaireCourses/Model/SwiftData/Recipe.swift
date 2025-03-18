//
//  Recipe.swift
//  GestionnaireCourses
//
//  Created by Nicolas Constantin on 17/03/2025.
//

import SwiftData
import Foundation

@Model
final class Recipe {
    var name: String
    var instructions: String?
    var servings: Int?
    var prepTime: Int?
    var cookTime: Int?
    var imageUrl: String? // Pour l'URL de l'image (Directus)
    @Relationship var ingredients: [Ingredient]? = nil

    init(name: String, instructions: String? = nil, servings: Int? = nil, prepTime: Int? = nil, cookTime: Int? = nil, imageUrl: String? = nil, ingredients: [Ingredient]? = nil) {
        self.name = name
        self.instructions = instructions
        self.servings = servings
        self.prepTime = prepTime
        self.cookTime = cookTime
        self.imageUrl = imageUrl
        self.ingredients = ingredients
    }
}
