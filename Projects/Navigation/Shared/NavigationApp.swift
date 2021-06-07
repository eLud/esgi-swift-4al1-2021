//
//  NavigationApp.swift
//  Shared
//
//  Created by Ludovic Ollagnier on 07/06/2021.
//

import SwiftUI

@main
struct NavigationApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Text("List")
                        Image(systemName: "list.bullet")
                    }
                Color(.purple)
                    .tabItem {
                        Text("Purple")
                        Image(systemName: "plus")
                    }
                Color(.purple)
                    .tabItem {
                        Text("Purple")
                        Image(systemName: "plus")
                    }
                Color(.purple)
                    .tabItem {
                        Text("Purple")
                        Image(systemName: "plus")
                    }
                Color(.purple)
                    .tabItem {
                        Text("Purple")
                        Image(systemName: "plus")
                    }
                Color(.purple)
                    .tabItem {
                        Text("Purple")
                        Image(systemName: "plus")
                    }
                Color(.purple)
                    .tabItem {
                        Text("Purple")
                        Image(systemName: "plus")
                    }
                Color(.purple)
                    .tabItem {
                        Text("Purple")
                        Image(systemName: "plus")
                    }
                Color(.purple)
                    .tabItem {
                        Text("Purple")
                        Image(systemName: "plus")
                    }
            }
        }
    }
}
