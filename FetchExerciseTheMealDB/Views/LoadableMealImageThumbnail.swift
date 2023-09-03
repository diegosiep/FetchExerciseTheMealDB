//
//  LoadableMealImageThumbnail.swift
//  FetchExerciseTheMealDB
//
//  Created by Diego Sierra on 29/08/23.
//

import SwiftUI

struct LoadableMealImageThumbnail: View {
    var image: Meal
    var body: some View {
        CacheAsyncImage(url: image.thumbnail) { phase in
            switch phase {
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
            case .failure( _):
                VStack {
                    Image(systemName: "fork.knife.circle")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .foregroundColor(.accentColor)
                }
            case .empty:
                ProgressView()
            @unknown default:
                ProgressView()
                
            }
        }
    }
}

struct LoadableMealImageThumbnail_Previews: PreviewProvider {
    static var previews: some View {
        LoadableMealImageThumbnail(image: Meal.defaultMeal)
    }
}
