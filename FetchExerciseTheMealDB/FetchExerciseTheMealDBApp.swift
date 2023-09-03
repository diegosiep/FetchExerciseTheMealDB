//
//  FetchExerciseTheMealDBApp.swift
//  FetchExerciseTheMealDB
//
//  Created by Diego Sierra on 28/08/23.
//

import SwiftUI

@main
struct FetchExerciseTheMealDBApp: App {
    
    @StateObject private var fetcher = MealsFetcher()
  
    var body: some Scene {

        WindowGroup {
            if #available(iOS 16.0, *) {
                NavigationStack {
                    AllMealsView()
                }
                .environmentObject(fetcher)
            } else {
                NavigationView {
                    AllMealsView()
                }
                .navigationViewStyle(.stack)
                .environmentObject(fetcher)
            }
            
            
        }
        
    }
        
}
