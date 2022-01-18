//
//  HighlightReel.swift
//  Assignment One
//
//  Created by Taylor  Lallas on 1/13/22.
//

import SwiftUI
import UIKit
import CoreLocation

//add special skaters
let highlightArray: [highlight] = [highlight(id: 1, description:"Move-in Day", imageName:"h1"), highlight(id: 2, description:"First Tennis Match", imageName:"h2"),highlight(id: 3, description:"Pi Phi <3", imageName:"h3"),highlight(id: 4, description:"NCAA CHAMPS!!", imageName:"h4"), highlight(id: 5, description:"ACE in South Africa", imageName:"h5"),highlight(id: 6, description:"Televised Nerves", imageName:"h6"),highlight(id: 7, description:"NCAA CHAMPS X 2", imageName:"h7"),highlight(id: 8, description:"Viennese Ballers", imageName:"h8"), highlight(id: 9, description:"Team Captaining", imageName:"h9"), highlight(id: 10, description:"Senior Day", imageName:"h10"),highlight(id: 11, description:"Graduation!", imageName:"h11"),highlight(id: 12, description:"Celebration Time :)", imageName:"h12"), highlight(id: 13, description:"5th Fall Football", imageName:"h13"), highlight(id: 14, description:"TA-ing CS147", imageName:"h14"),]

struct highlight: Codable, Hashable, Identifiable {
    var id: Int
    var description: String
    var imageName: String
}

extension highlight {
    var image: Image {
        Image(imageName)
    }
}


struct HighlightReel: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("My Stanford Highlight Reel")
                .font(.headline)
                .foregroundColor(Color.black)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(highlightArray, id:\.self) { highlight in
                        VStack {
                            Image(highlight.imageName)
                                .resizable()
                                .frame(width: 150, height: 180)
                                .scaledToFit()
                                .clipped()
                            Text(highlight.description)
                             
                        }
                        .padding()
                        .background(Color.white)
                        .shadow(radius: 8)
                    }.padding(.bottom)
                }
            }
        }.padding()
            
    }
}

struct HighlightReel_Previews: PreviewProvider {
    static var previews: some View {
        HighlightReel()
    }
}

