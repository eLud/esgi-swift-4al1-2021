import UIKit

// Nom des types commencent par des majuscules

struct Ingredient: Equatable {
    let name: String
    let isVeggie: Bool
}

struct Meal: Equatable {

    // Nom des propriétés commencent par des minuscules
    let name: String
    let ingredients: [Ingredient]
    let price: Double
    let pitch: String
    let preciseDescription: String

    // Computed property (get-only)
    var isVeggie: Bool {
        ingredients.allSatisfy { (ingredient) -> Bool in
            return ingredient.isVeggie
        }
    }

    init(name: String, ingredients: [Ingredient], price: Double, pitch: String, preciseDescription: String) {
        self.name = name
        self.ingredients = ingredients
        self.price = price
        self.pitch = pitch
        self.preciseDescription = preciseDescription

//        self.isVeggie = ingredients.allSatisfy { (ingredient) -> Bool in
//            return ingredient.isVeggie
//        }
    }
}

let ingredients = [Ingredient(name: "Riz", isVeggie: true), Ingredient(name: "Tomate", isVeggie: false)]

let myMeal = Meal(name: "Riz à la tomate", ingredients: ingredients, price: 8, pitch: "Un super plat", preciseDescription: "")

myMeal.isVeggie


class Restaurant {

    let name: String
    let address: String?
    var meals: [Meal]
    let pitch: String

    var mediumMealPrice: Double {

        guard !meals.isEmpty else { return 0.0 } //Équivalent au if juste en dessous
        if meals.isEmpty { return 0.0 }
//        guard meals.count < Int.max else { return 0.0 }

        let totalPrice = meals.reduce(0.0) { (result, meal) -> Double in
            result + meal.price
        }
        return totalPrice / Double(meals.count)
    }

    init(name: String, address: String?, pitch: String, meals: [Meal]) {
        self.name = name
        self.address = address
        self.pitch = pitch
        self.meals = meals
    }

    func add(_ meal: Meal) {
        guard !meals.contains(meal) else { return }
     }

    func remove(_ meal: Meal) {

        if let firstIndex = meals.firstIndex(of: meal) {
            meals.remove(at: firstIndex)
        }

        guard let firstIndex2 = meals.firstIndex(of: meal) else { return }
        meals.remove(at: firstIndex2)
    }
}

let resto = Restaurant(name: "", address: nil, pitch: "", meals: [])
resto.add(myMeal)
resto.remove(myMeal)

let dico: [String: Int] = ["age": 12]
let result: Optional<Int> = dico[""]
if let result = dico["age"] {
    print(result)
}







