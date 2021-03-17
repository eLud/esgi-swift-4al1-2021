//
//  Contact.swift
//  ContactTracer
//
//  Created by Ludovic Ollagnier on 17/03/2021.
//

import Foundation
import SwiftUI

struct Contact: Identifiable {
    let name: String
    let date: Date

    let id = UUID()
}
