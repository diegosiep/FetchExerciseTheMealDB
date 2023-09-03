//
//  MealsController.swift
//  FetchExerciseTheMealDB
//
//  Created by Diego Sierra on 28/08/23.
//

import SwiftUI


class MealsFetcher: ObservableObject {
    @Published var allMealsData = AllMeals(meals: [Meal.defaultMeal])
    @Published var detailedMeal = DetailedMeal(details: [Details.defaultMealDetails])
    @Published var currentMeal = Details.defaultMealDetails
    
    static var shared = MealsFetcher()
    
    enum FetchError: Error {
        case badResponse
        case failedRequest
    }
    
    func fetchAllMealsData() async throws {
        let query = ["c": "Dessert"]
        var urlComponents = URLComponents(string: "https://themealdb.com/api/json/v1/1/filter.php")!
        urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value)}
        let urlRequest = URLRequest(url: urlComponents.url!)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw FetchError.badResponse
        }
        
        try await MainActor.run {
            allMealsData = try JSONDecoder().decode(AllMeals.self, from: data)
        }
        
    }
    
    func fetchSelectedMealDetails(meal: Meal) async throws {
        let query = [
            "i": meal.id
        ]
        var urlComponents = URLComponents(string: "https://themealdb.com/api/json/v1/1/lookup.php")!
        urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value)}
        let urlRequest = URLRequest(url: urlComponents.url!)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw FetchError.badResponse
        }
        
        
        try await MainActor.run {
            detailedMeal = try JSONDecoder().decode(DetailedMeal.self, from: data)
            currentMeal = detailedMeal.details[0]
        }
        
    }
    
    
    //    Used for Unit testing purposes only
    func testAllMealsDataFetching() async throws -> AllMeals {
        let query = ["c": "Dessert"]
        var urlComponents = URLComponents(string: "https://themealdb.com/api/json/v1/1/filter.php")!
        urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value)}
        let urlRequest = URLRequest(url: urlComponents.url!)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw FetchError.badResponse
        }
        
        let jsonDecoder = JSONDecoder()
        let allMealsData = try jsonDecoder.decode(AllMeals.self, from: data)
        
        return allMealsData
        
    }
    
    
}
