//
//  RecipeManager.swift
//  GestionnaireCourses
//
//  Created by Nicolas Constantin on 17/03/2025.
//

import Foundation
import SwiftData
import Combine // Importez Combine

class RecipeManager: ObservableObject { // Conforme à ObservableObject
    private let modelContext: ModelContext

    init(modelContext: ModelContext) {
        self.modelContext = modelContext
    }

    // Fonction pour créer une nouvelle recette
    func createRecipe(name: String, instructions: String? = nil, servings: Int? = nil, prepTime: Int? = nil, cookTime: Int? = nil, imageUrl: String? = nil, ingredients: [Ingredient]? = nil) throws {
        guard let ingredients = ingredients, !ingredients.isEmpty else {
            throw RecipeError.noIngredients
        }

        let newRecipe = Recipe(name: name, instructions: instructions, servings: servings, prepTime: prepTime, cookTime: cookTime, imageUrl: imageUrl, ingredients: ingredients)
        modelContext.insert(newRecipe)
        try modelContext.save()
    }

    // Fonction pour récupérer toutes les recettes
    func getAllRecipes() throws -> [Recipe] {
        let fetchDescriptor = FetchDescriptor<Recipe>()
        return try modelContext.fetch(fetchDescriptor)
    }

    // Vous ajouterez d'autres fonctions ici (mise à jour, suppression, etc.)
}

// Définition d'une erreur spécifique pour les recettes
enum RecipeError: Error {
    case noIngredients
}
