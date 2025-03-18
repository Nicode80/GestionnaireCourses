//
//  ContentView.swift
//  GestionnaireCourses
//
//  Created by Nicolas Constantin on 17/03/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @StateObject var recipeManager: RecipeManager
    @Query var recipes: [Recipe] // Récupérer toutes les recettes

    var body: some View {
        NavigationView {
            List { // Utiliser une List pour afficher les recettes
                ForEach(recipes) { recipe in
                    Text(recipe.name) // Afficher le nom de chaque recette
                }
            }
            .navigationTitle("Gestionnaire de Courses")
        }
    }
}

