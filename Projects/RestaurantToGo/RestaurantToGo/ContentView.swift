//
//  ContentView.swift
//  RestaurantToGo
//
//  Created by Ludovic Ollagnier on 14/05/2021.
//

import SwiftUI

struct ContentView: View {

    let mealName: String = "Pizza"
    let mealIngredients = "Sauce tomate, mozzarella, roquette"
    let mealPrice: Double = 15

    @State private var numberOfItems = 1
    @EnvironmentObject var userData: UserData

    var body: some View {
        VStack {
            Text("Hello \(userData.userName)")
            Spacer()
            MealNameView(mealName: "\(numberOfItems) \(mealName)", ingredients: mealIngredients)
            Stepper("Nombre", value: $numberOfItems)
            TextField("Username", text: $userData.userName)
            Spacer()
            PayButtonView(mealPrice: mealPrice, numberOfItems: $numberOfItems)
        }
    }
}

extension View {
    func pshychéBackground(foregroundColor: Color) -> some View {
        self.foregroundColor(foregroundColor)
            .padding()
            .background(Color.green)
            .cornerRadius(30)
            .background(Color.red)
            .cornerRadius(10)
            .background(Color.yellow)
            .cornerRadius(3)
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

struct PayButtonView: View {

    let mealPrice: Double
    @Binding var numberOfItems: Int
    @EnvironmentObject var userData: UserData

    var body: some View {
        Button(action: {
            numberOfItems += 1
        }, label: {
            HStack {
                Text("Ajouter \(numberOfItems) au panier de \(userData.userName)")
                Text("\(mealPrice * Double(numberOfItems))€")
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.black)
        })
    }
}
