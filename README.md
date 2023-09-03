# FetchExerciseTheMealDB
iOS coding challenge/exercise using TheMealDB API for the "Fetch" Application process.

1. This Xcode Project/iOS App uses SwiftUI to implement its user interface.
2. The app is compatible with iOS 15 and up.
3. A CacheAsyncImage struct was created to cache images; it implements the same methods and properties as 'AsyncImage' but with the extra methods/classes for creating a temporary cache that is cleaned each time the app is terminated (maintains image thumbnails/image for details View, for each time the app is launched).
4. 'Unit Testing' has been implemented in the Utilities folder using the XCTest framework; these tests assert the correct number of Meal objects and alphabetical order.
5. Thread safety is implemented by the use of @MainActor in the fetchAllMealsData() and fetchSelectedMealDetails(meal: Meal) methods in MealsFetcher class (network layer).
6. Combine features are implemented in the MealsFetcher class by the type alias @Published and ObervableObject (the network layer uses publishers and responds to their changes to update views).
7. An 'extra' feature has been added as well. This feature is web navigation through SafariView for displaying video instructions (link included in the JSON file from TheMealDB API) --> implements a protocol that allows for the creation and management of a UIKit ViewController.

Thanks for reviewing and for the opportunity.

