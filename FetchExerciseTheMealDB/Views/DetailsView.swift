//
//  MealDetail.swift
//  FetchExerciseTheMealDB
//
//  Created by Diego Sierra on 29/08/23.
//

import SwiftUI

struct DetailsView: View {
    @EnvironmentObject var fetcher: MealsFetcher
    var details: Details
    
    var body: some View {
        ScrollView {
            LoadableDetailedMealImage(image: details)
                .padding(.maximum(50, 50))
            VStack(alignment: .leading) {
                Text(details.name)
                    .font(.title)
                HStack {
                    Text("Category")
                        .font(.subheadline)
                        .fontWeight(.black)
                    Divider()
                        .frame(height: 30)
                        .overlay(.black)
                    Text(details.category)
                }
                HStack {
                    Text("Meal origin/ethnicity")
                        .font(.subheadline)
                        .fontWeight(.black)
                    Divider()
                        .frame(height: 30)
                        .overlay(.black)
                    Text(details.foodEthnicity)
                }
                HStack {
                    Text("Video Instructions")
                        .font(.subheadline)
                        .fontWeight(.black)
                    Divider()
                        .frame(height: 30)
                        .overlay(.black)
                    if let availableSafariURL = details.videoURL {
                        SafariView(videoURL: availableSafariURL)
                    } else {
                        Text("No video available")
                    }
                }
                Spacer(minLength: 30)
                
                Text("Ingredient List:")
                    .font(.headline)
                Spacer()
                    .frame(maxHeight: 10)
                Divider()
                VStack(alignment: .leading) {
                    if let ingredientOne = details.ingredientOne, !ingredientOne.isEmpty {
                        HStack {
                            Text(ingredientOne)
                                .fontWeight(.bold)
                            Divider()
                            Text(details.measureOne ?? "No measure")
                        }
                    }
                    
                    if let ingredientTwo = details.ingredientTwo, !ingredientTwo.isEmpty {
                        HStack {
                            Text(ingredientTwo)
                                .fontWeight(.bold)
                            Divider()
                            Text(details.measureTwo ?? "No measure")
                        }
                    }
                    if let ingredientThree = details.ingredientThree, !ingredientThree.isEmpty {
                        HStack {
                            Text(ingredientThree)
                                .fontWeight(.bold)
                            Divider()
                            
                            Text(details.measureThree ?? "No measure")
                        }
                    }
                    if let ingredientFour = details.ingredientFour, !ingredientFour.isEmpty {
                        HStack {
                            Text(ingredientFour)
                                .fontWeight(.bold)
                            Divider()
                            
                            Text(details.measureFour ?? "No measure")
                        }
                    }
                    if let ingredientFive = details.ingredientFive, !ingredientFive.isEmpty {
                        HStack {
                            Text(ingredientFive)
                                .fontWeight(.bold)
                            Divider()
                            
                            Text(details.measureFive ?? "No measure")
                        }
                    }
                    if let ingredientSix = details.ingredientSix, !ingredientSix.isEmpty {
                        HStack {
                            Text(ingredientSix)
                                .fontWeight(.bold)
                            Divider()
                            
                            Text(details.measureSix ?? "No measure")
                        }
                    }
                    if let ingredientSeven = details.ingredientSeven, !ingredientSeven.isEmpty {
                        HStack {
                            Text(ingredientSeven)
                                .fontWeight(.bold)
                            Divider()
                            
                            Text(details.measureSeven ?? "No measure")
                        }
                    }
                    if let ingredientEight = details.ingredientEight, !ingredientEight.isEmpty {
                        HStack {
                            Text(ingredientEight)
                                .fontWeight(.bold)
                            Divider()
                            Text(details.measureEight ?? "No measure")
                        }
                    }
                    if let ingredientNine = details.ingredientNine, !ingredientNine.isEmpty {
                        HStack {
                            Text(ingredientNine)
                                .fontWeight(.bold)
                            Divider()
                            Text(details.measureNine ?? "No measure")
                        }
                    }
                    if let ingredientTen = details.ingredientTen, !ingredientTen.isEmpty {
                        HStack {
                            Text(ingredientTen)
                                .fontWeight(.bold)
                            Divider()
                            Text(details.measureTen ?? "No measure")
                        }
                    }
                    
                }
                
                VStack(alignment: .leading) {
                    if let ingredientEleven = details.ingredientEleven, !ingredientEleven.isEmpty {
                        HStack {
                            Text(ingredientEleven)
                                .fontWeight(.bold)
                            Divider()
                            Text(details.measureEleven ?? "No measure")
                        }
                    }
                    if let ingredientTwelve = details.ingredientTwelve, !ingredientTwelve.isEmpty {
                        HStack {
                            Text(ingredientTwelve)
                                .fontWeight(.bold)
                            Divider()
                            
                            Text(details.measureTwelve ?? "No measure")
                        }
                    }
                    if let ingredientThirteen = details.ingredientThirteen, !ingredientThirteen.isEmpty {
                        HStack {
                            Text(ingredientThirteen)
                                .fontWeight(.bold)
                            Divider()
                            
                            Text(details.measureThirteen ?? "No measure")
                        }
                    }
                    if let ingredientFourteen = details.ingredientFourteen, !ingredientFourteen.isEmpty {
                        HStack {
                            Text(ingredientFourteen)
                                .fontWeight(.bold)
                            Divider()
                            
                            Text(details.measureFourteen ?? "No measure")
                        }
                    }
                    if let ingredientFifteen = details.ingredientFifteen, !ingredientFifteen.isEmpty {
                        HStack {
                            Text(ingredientFifteen)
                                .fontWeight(.bold)
                            Divider()
                            Text(details.measureFifteen ?? "No measure")
                        }
                    }
                    if let ingredientSixteen = details.ingredientSixteen, !ingredientSixteen.isEmpty {
                        HStack {
                            Text(ingredientSixteen)
                                .fontWeight(.bold)
                            Divider()
                            
                            Text(details.measureSixteen ?? "No measure")
                        }
                    }
                    if let ingredientSeventeen = details.ingredientSeventeen, !ingredientSeventeen.isEmpty {
                        HStack {
                            Text(ingredientSeventeen)
                                .fontWeight(.bold)
                            Divider()
                            
                            Text(details.measureSeventeen ?? "No measure")
                        }
                    }
                    if let ingredientEighteen = details.ingredientEighteen, !ingredientEighteen.isEmpty {
                        HStack {
                            Text(ingredientEighteen)
                                .fontWeight(.bold)
                            Divider()
                            Text(details.measureEighteen ?? "No measure")
                        }
                    }
                    if let ingredientNineteen = details.ingredientNineteen, !ingredientNineteen.isEmpty {
                        HStack {
                            Text(ingredientNineteen)
                                .fontWeight(.bold)
                            Divider()
                            Text(details.measureNineteen ?? "No measure")
                        }
                    }
                    
                    if let ingredientTwenty = details.ingredientTwenty, !ingredientTwenty.isEmpty {
                        HStack {
                            Text(ingredientTwenty)
                                .fontWeight(.bold)
                            Divider()
                            Text(details.measureTwenty ?? "No measure")
                        }
                    }
                }
            }
            .padding()
            
            
            VStack(alignment: .leading) {
                Text("Instructions:")
                    .font(.headline)
                Divider()
                Text(details.instructions)
                
            }
            .padding()
        }
    }
    
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(details: Details.defaultMealDetails)
        
    }
}
