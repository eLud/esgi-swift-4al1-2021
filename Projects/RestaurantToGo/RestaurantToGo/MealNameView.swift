//
//  MealNameView.swift
//  RestaurantToGo
//
//  Created by Ludovic Ollagnier on 14/05/2021.
//

import SwiftUI

struct MealNameView: View {

    let mealName: String
    let ingredients: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(mealName)
                .font(.title)
            Text(ingredients)
                .font(.body)
                .foregroundColor(Color.gray)
        }
    }
}

struct MealNameView_Previews: PreviewProvider {
    static var previews: some View {
        MealNameView(mealName: "Commenda", ingredients: "Sauce tomate, mozzarella, roquette")
    }
}
