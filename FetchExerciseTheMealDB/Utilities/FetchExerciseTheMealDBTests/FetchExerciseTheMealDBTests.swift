//
//  FetchExerciseTheMealDBTests.swift
//  FetchExerciseTheMealDBTests
//
//  Created by Diego Sierra on 01/09/23.
//

import XCTest
@testable import FetchExerciseTheMealDB

final class FetchExerciseTheMealDBTests: XCTestCase {
    
    
//    This test detects if the number of meals returned from TheMealDB API coincides with the number of meals fetched by the app's fetch async method.
    func testMealsListNumber() async throws {
        var mealsList = MealsList(allMeals: AllMeals.init(meals: []))
        
        let allMealsTestFetcher = try await MealsFetcher.shared.testAllMealsDataFetching()
        mealsList.allMeals = allMealsTestFetcher
        
        XCTAssertEqual(mealsList.allMeals.meals.count, 64)
    }
    
//    This test detects for alphabetical order of Meals; the first one starting with the letter "A" and the last one starting with the letter "W" (just as it occurs in the JSON file returned from TheMealDB API).
    func testMealsListAlphabeticalOrder() async throws {
        var mealsList = MealsList(allMeals: AllMeals.init(meals: []))
        
        let allMealsTestFetcher = try await MealsFetcher.shared.testAllMealsDataFetching()
        mealsList.allMeals = allMealsTestFetcher
        
        XCTAssertEqual(mealsList.allMeals.meals.first?.name, "Apam balik")
        XCTAssertEqual(mealsList.allMeals.meals.last?.name, "White chocolate creme brulee")
        
    }
    
}
