//
//  SectionHeader.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/19/22.
//

import SwiftUI

struct SectionHeader: View {
    var teamName: String
    
    var body: some View {
        Text("Team \(teamName)")
            .font(.system(size: 24, weight: .semibold))
    }
}
