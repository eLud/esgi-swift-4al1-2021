//
//  ContactListView.swift
//  ContactTracer
//
//  Created by Ludovic Ollagnier on 17/03/2021.
//

import SwiftUI

struct ContactListView: View {

    @Binding var tracer: ContactTracer

    var body: some View {
        List(tracer.contacts) { contact in
            Text(contact.name)
        }
    }
}

//struct ContactListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContactListView(tracer: <#ContactTracer#>)
//    }
//}
