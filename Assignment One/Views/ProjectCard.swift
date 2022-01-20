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
    var mentors: String
    var backgroundColor: Color
    var url: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(backgroundColor)
            .overlay(
                HStack {
                    VStack(alignment: .leading){
                        Text(name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.bottom, 15)
                        
                        Text(description)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 15)
                        
                        Text("Led by \(mentors)")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .padding(.bottom, 15)
                        
                        Spacer()
                        
                        Link("Team Card", destination: URL(string: url)!)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(red: 0, green: 0, blue: 0.5))
                        .clipShape(Capsule())
                        
                        Spacer()
                        
                    }.padding(.top, 20).padding(.leading, 20)
                    Spacer()
                }
            )
            .frame(height: 300)
            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
            .padding(20)
    }
}
