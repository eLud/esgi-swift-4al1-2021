import UIKit

// Nom des types commencent par des majuscules

struct Ingredient {
    let name: String
    let isVeggie: Bool
}

struct Meal {

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
