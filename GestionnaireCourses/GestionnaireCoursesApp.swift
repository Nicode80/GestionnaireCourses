//
//  GestionnaireCoursesApp.swift
//  GestionnaireCourses
//
//  Created by Nicolas Constantin on 17/03/2025.
//

import SwiftUI
import SwiftData

@main
struct GestionnaireCoursesApp: App {
    @Environment(\.modelContext) private var modelContext
    let recipeManager: RecipeManager

    init() {
        let container = try! ModelContainer(for: Recipe.self, Ingredient.self, ShoppingListItem.self)
        let context = container.mainContext
        recipeManager = RecipeManager(modelContext: context)

        // Ajouter des recettes de test
        do {
            let ingredient1_1 = Ingredient(name: "Laitue", unit: "feuille")
            let ingredient1_2 = Ingredient(name: "Tomate", unit: "pièce")
            try recipeManager.createRecipe(name: "Salade simple", ingredients: [ingredient1_1, ingredient1_2])

            let ingredient2_1 = Ingredient(name: "Oeuf", unit: "pièce")
            let ingredient2_2 = Ingredient(name: "Fromage râpé", unit: "g")
            try recipeManager.createRecipe(name: "Omelette facile", ingredients: [ingredient2_1, ingredient2_2])

            let ingredient3_1 = Ingredient(name: "Pain de mie", unit: "tranche")
            let ingredient3_2 = Ingredient(name: "Beurre", unit: "g")
            try recipeManager.createRecipe(name: "Toast au beurre", ingredients: [ingredient3_1, ingredient3_2])

        } catch {
            print("Erreur lors de l'ajout des recettes de test : \(error)")
        }
    }

    var body: some Scene {
        WindowGroup {
            ContentView(recipeManager: recipeManager)
                .environment(\.modelContext, modelContext)
        }
        .modelContainer(for: [Recipe.self, Ingredient.self, ShoppingListItem.self])
    }
}
