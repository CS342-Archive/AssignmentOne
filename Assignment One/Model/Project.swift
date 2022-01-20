//
//  Project.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/20/22.
//

import Foundation

struct Project: Codable, Identifiable {
    let id: UUID = UUID()
    let logo: String
    let name: String
    let description: String
    let mentors: String
    let url: String
    let proposal: String
}
