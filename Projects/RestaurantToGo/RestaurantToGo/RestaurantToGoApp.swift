//
//  RestaurantToGoApp.swift
//  RestaurantToGo
//
//  Created by Ludovic Ollagnier on 14/05/2021.
//

import SwiftUI

@main
struct RestaurantToGoApp: App {

    @StateObject private var userData: UserData = UserData()

    var body: some Scene {
        WindowGroup {
            VStack {
                ContentView()
                PayButtonView(mealPrice: 56, numberOfItems: .constant(24))
            }
            .environmentObject(userData)
        }
    }
}

class UserData: ObservableObject {

    @Published var userName = "Ludovic"
}
