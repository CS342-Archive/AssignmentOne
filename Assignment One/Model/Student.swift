//
//  Submissions.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/19/22.
//

import SwiftUI

struct Student: Identifiable {
    var id: UUID = UUID()
    var name: String
    var view: AnyView
    var team: Team
    var photo: String
}
