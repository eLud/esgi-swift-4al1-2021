//
//  AppNavigationRootView.swift
//  ContactTracer
//
//  Created by Ludovic Ollagnier on 17/03/2021.
//

import SwiftUI

struct AppNavigationRootView: View {

    @State var tracer = ContactTracer(contacts: [])

    var body: some View {
        TabView {
            ContentView(tracer: $tracer)
                .tabItem { Text("Saisie") }
            ContactListView(tracer: $tracer)
                .tabItem { Text("Liste") }
        }
    }
}

struct AppNavigationRootView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavigationRootView()
    }
}
