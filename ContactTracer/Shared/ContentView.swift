//
//  ContentView.swift
//  Shared
//
//  Created by Ludovic Ollagnier on 16/03/2021.
//

import SwiftUI

struct ContentView: View {

    @State var name = ""
    @Binding var tracer: ContactTracer

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.green)
                .frame(width: 100, height: 100)
            Spacer()
            HStack {
                TextField("Contact name", text: $name)
                Button("Ajouter") {
                    let contact = Contact(name: name, date: Date())
                    tracer.add(contact: contact)
                    print(tracer.contacts)
                }
            }
            Spacer()
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
