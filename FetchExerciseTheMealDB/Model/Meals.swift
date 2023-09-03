//
//  Recipe.swift
//  FetchExerciseTheMealDB
//
//  Created by Diego Sierra on 28/08/23.
//

import Foundation

struct AllMeals: Codable {
    var meals: [Meal]
    
}

struct Meal: Codable, Identifiable, Comparable {
    static func < (lhs: Meal, rhs: Meal) -> Bool {
        lhs.name < rhs.name
    }
    
    static let defaultMeal = Meal(name: "Dessert", thumbnail: Bundle.main.url(forResource: "defaultMealThumbnail", withExtension: "png")!, id: "53049")
    
    var name: String
    var thumbnail: URL
    var id: String
    
    enum CodingKeys: String, CodingKey {
        case name = "strMeal"
        case thumbnail = "strMealThumb"
        case id = "idMeal"
    }
}

struct DetailedMeal: Codable {
    static let defaultDetailedMeal = DetailedMeal(details: [Details(id: "", name: "", category: "", foodEthnicity: "", instructions: "", thumbnail: Bundle.main.url(forResource: "defaultMealThumbnail", withExtension: "png")!)])
    
    var details: [Details]
    
    enum CodingKeys: String, CodingKey {
        case details = "meals"
    }
    
}

struct Details: Codable, Identifiable {
    static let defaultMealDetails = Details(id: "", name: "Dessert Name", category: "Dessert", foodEthnicity: "Meal's ethnicity", instructions: "", thumbnail: Bundle.main.url(forResource: "defaultMealThumbnail", withExtension: "png")!)
    
    var id: String
    var name: String
    var category: String
    var foodEthnicity: String
    var instructions: String
    var thumbnail: URL
    var videoURL: URL?
    var ingredientOne: String?
    var ingredientTwo: String?
    var ingredientThree: String?
    var ingredientFour: String?
    var ingredientFive: String?
    var ingredientSix: String?
    var ingredientSeven: String?
    var ingredientEight: String?
    var ingredientNine: String?
    var ingredientTen: String?
    var ingredientEleven: String?
    var ingredientTwelve: String?
    var ingredientThirteen: String?
    var ingredientFourteen: String?
    var ingredientFifteen: String?
    var ingredientSixteen: String?
    var ingredientSeventeen: String?
    var ingredientEighteen: String?
    var ingredientNineteen: String?
    var ingredientTwenty: String?
    var measureOne: String?
    var measureTwo: String?
    var measureThree: String?
    var measureFour: String?
    var measureFive: String?
    var measureSix: String?
    var measureSeven: String?
    var measureEight: String?
    var measureNine: String?
    var measureTen: String?
    var measureEleven: String?
    var measureTwelve: String?
    var measureThirteen: String?
    var measureFourteen: String?
    var measureFifteen: String?
    var measureSixteen: String?
    var measureSeventeen: String?
    var measureEighteen: String?
    var measureNineteen: String?
    var measureTwenty: String?
    
    
    enum CodingKeys: String, CodingKey {
        case id = "idMeal"
        case name = "strMeal"
        case category = "strCategory"
        case foodEthnicity = "strArea"
        case instructions = "strInstructions"
        case thumbnail = "strMealThumb"
        case videoURL = "strYoutube"
        case ingredientOne = "strIngredient1"
        case ingredientTwo = "strIngredient2"
        case ingredientThree = "strIngredient3"
        case ingredientFour = "strIngredient4"
        case ingredientFive = "strIngredient5"
        case ingredientSix = "strIngredient6"
        case ingredientSeven = "strIngredient7"
        case ingredientEight = "strIngredient8"
        case ingredientNine = "strIngredient9"
        case ingredientTen = "strIngredient10"
        case ingredientEleven = "strIngredient11"
        case ingredientTwelve = "strIngredient12"
        case ingredientThirteen = "strIngredient13"
        case ingredientFourteen = "strIngredient14"
        case ingredientFifteen = "strIngredient15"
        case ingredientSixteen = "strIngredient16"
        case ingredientSeventeen = "strIngredient17"
        case ingredientEighteen = "strIngredient18"
        case ingredientNineteen = "strIngredient19"
        case ingredientTwenty = "strIngredient20"
        case measureOne = "strMeasure1"
        case measureTwo = "strMeasure2"
        case measureThree = "strMeasure3"
        case measureFour = "strMeasure4"
        case measureFive = "strMeasure5"
        case measureSix = "strMeasure6"
        case measureSeven = "strMeasure7"
        case measureEight = "strMeasure8"
        case measureNine = "strMeasure9"
        case measureTen = "strMeasure10"
        case measureEleven = "strMeasure11"
        case measureTwelve = "strMeasure12"
        case measureThirteen = "strMeasure13"
        case measureFourteen = "strMeasure14"
        case measureFifteen = "strMeasure15"
        case measureSixteen = "strMeasure16"
        case measureSeventeen = "strMeasure17"
        case measureEighteen = "strMeasure18"
        case measureNineteen = "strMeasure19"
        case measureTwenty = "strMeasure20"
        
    }
    
}



