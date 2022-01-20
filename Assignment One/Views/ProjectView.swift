//
//  ProjectView.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/19/22.
//

import SwiftUI

struct ProjectView: View {
    var body: some View {
        BadgeView()
    }
}

struct Badge {
    let id = UUID()
    let title: String
    let photo: String
    let color: Color
}

struct BadgeView: View {
    
    var allBadges: [Badge] = [
        Badge(title: "Oliver Aalami", photo: "MeganWorrel", color: .blue),
        Badge(title: "Vishnu Ravi", photo: "MeganWorrel", color: .orange),
        Badge(title: "Surabhi Mundada", photo: "MeganWorrel", color: .yellow),
        Badge(title: "Varun Shenoy", photo: "MeganWorrel", color: .green),
        Badge(title: "Santiago Gutierrez", photo: "MeganWorrel", color: .blue),
        Badge(title: "Mike Hittle", photo: "MeganWorrel", color: .orange)
    ]
    
    var body: some View {
        VStack {
            Text("Meet your Teaching Team")
                .font(.largeTitle)
                .padding(.bottom)
            Spacer()
            ScrollView(.horizontal) {
                HStack(alignment: .center, spacing: 220) {
                    ForEach(allBadges, id:\.id) { badge in
                        GeometryReader { geometry in
                            Rectangle()
                                .foregroundColor(badge.color)
                                .overlay(
                                    VStack{
                                        Image(badge.photo)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 75, height: 75)
                                            .clipShape(Circle())
                                            .shadow(color: Color.black.opacity(0.2), radius: 5)
                                            .padding(10)
                                        Text(badge.title)
                                            .font(.system(size: 30))
                                            .foregroundColor(.white)
                                    }
                                )
                                .frame(width: 200, height: 300, alignment: .center)
                                .cornerRadius(16)
                                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
                                .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 210) / -20), axis: (x: 0, y: 1.0, z: 0))
                        }
                    }
                }
                .padding(.trailing, 200)
                .padding(.leading, 20)
            }
            Spacer()
        }
    }
}


struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView()
    }
}
