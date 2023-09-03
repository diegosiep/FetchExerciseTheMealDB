//
//  ContentView.swift
//  FetchExerciseTheMealDB
//
//  Created by Diego Sierra on 28/08/23.
//

import SwiftUI

struct AllMealsView: View {
    @EnvironmentObject var fetcher: MealsFetcher
    var body: some View {
        MealsList(allMeals: fetcher.allMealsData)
            .task {
                try? await fetcher.fetchAllMealsData()
            }
    }
}


struct AllMealsView_Previews: PreviewProvider {
    static var previews: some View {
        AllMealsView()
            .environmentObject(MealsFetcher())
    }
}
