//
//  ContactTracer.swift
//  ContactTracer
//
//  Created by Ludovic Ollagnier on 17/03/2021.
//

import Foundation

struct ContactTracer {
    var contacts: [Contact]

    mutating func add(contact: Contact) {
        contacts.append(contact)
    }
}
