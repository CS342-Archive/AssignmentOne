//
//  ProjectCard.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/20/22.
//

import SwiftUI

struct ProjectCard: View {
    var logo: String
    var name: String
    var description: String
    
    var body: some View {
        HStack(alignment: .center){
            Image(logo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .padding(.all, 20)
            VStack {
                Text(name)
                    .font(.system(size: 26, weight: .semibold))
                Text(description)
                    .font(.system(size: 16, weight: .light))
            }
            Spacer()
        }.frame(maxWidth: .infinity, alignment: .center)
            .background(Color("CustomGreen"))
            .modifier(CardModifier())
            .padding(.all, 10)
    }
    
}

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(15)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
    }
}
