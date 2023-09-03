//
//  MealDetailsView.swift
//  FetchExerciseTheMealDB
//
//  Created by Diego Sierra on 30/08/23.
//

import SwiftUI

struct MealDetailsView: View {
    @EnvironmentObject var fetcher: MealsFetcher
    var selectedMeal: Meal
    
    var body: some View {
        DetailsView(details: fetcher.currentMeal)
            .task {
                try? await fetcher.fetchSelectedMealDetails(meal: selectedMeal)
            }
    }
        
}

struct MealDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MealDetailsView(selectedMeal: Meal.defaultMeal)
            .environmentObject(MealsFetcher())
    }
}
