//
//  ContentView.swift
//  Shared
//
//  Created by Ludovic Ollagnier on 07/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: CustomTextView(text: "View A", color: .red),
                    label: {
                        Text("View A")
                    })
                NavigationLink("View B", destination: CustomTextView(text: "View B", color: .green))
                Text("View C")
                Text("View D")
            }
            .navigationTitle("View list")
            .toolbar {
                Button {

                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
