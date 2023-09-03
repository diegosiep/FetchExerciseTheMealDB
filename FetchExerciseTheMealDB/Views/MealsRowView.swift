//
//  MealsRowView.swift
//  FetchExerciseTheMealDB
//
//  Created by Diego Sierra on 29/08/23.
//

import SwiftUI

struct MealsRowView: View {
    var meal: Meal
    
    var body: some View {
        HStack {
            LoadableMealImageThumbnail(image: meal)
                .frame(width: 40, height: 40)
            Text(meal.name)
            Spacer()
        }
    }
}

struct MealsRowView_Previews: PreviewProvider {
    static var previews: some View {
        MealsRowView(meal: Meal.defaultMeal)
    }
}
