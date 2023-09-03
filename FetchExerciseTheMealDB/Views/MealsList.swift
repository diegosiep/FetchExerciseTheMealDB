//
//  MealsList.swift
//  FetchExerciseTheMealDB
//
//  Created by Diego Sierra on 29/08/23.
//

import SwiftUI

struct MealsList: View {
    var allMeals: AllMeals
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                List(allMeals.meals.sorted()) { meal in
                    NavigationLink {
                        MealDetailsView(selectedMeal: meal)
                    } label: {
                        MealsRowView(meal: meal)
                    }
                }
                .navigationTitle("Desserts")
            }
            
        } else {
            NavigationView {
                List(allMeals.meals.sorted()) { meal in
                    NavigationLink {
                        MealDetailsView(selectedMeal: meal)
                    } label: {
                        MealsRowView(meal: meal)
                    }
                }
                .navigationTitle("Desserts")
            }
            .navigationBarHidden(true)
            .navigationViewStyle(.stack)
           
        }
        
    }
}

struct MealsList_Previews: PreviewProvider {
    static var previews: some View {
        MealsList(allMeals: AllMeals(meals: [Meal.defaultMeal]))
    }
}
