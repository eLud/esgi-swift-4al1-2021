//
//  CustomTextView.swift
//  Navigation
//
//  Created by Ludovic Ollagnier on 07/06/2021.
//

import SwiftUI

struct CustomTextView: View {

    let text: String
    let color: Color

    var body: some View {
        ZStack {
            color
            Text(text)
        }.navigationTitle(text)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CustomTextView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextView(text: "Hello SwiftUI", color: .green)
    }
}
