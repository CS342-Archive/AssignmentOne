//
//  AnkushDhawan.swift
//  Assignment One
//
//  Created by Ankush Dhawan on 1/17/22.
//

import SwiftUI
import MapKit

struct AnkushDhawan: View {
    @State var progress = 0.0
    
    var body: some View {
        VStack {
            Text("Ankush Dhawan").font(.title).fontWeight(.heavy).foregroundColor(Color(red: 80/255, green: 80/255, blue: 200/255))
                .bold()
            Image("Ankush_Dhawan")
                .resizable()
                .scaledToFill()
                .frame(width: 210, height: 280, alignment: .center)
                .border(Color.white)
                .clipped()
                .shadow(radius: 7)
            Text("I am a sophomore studying EE, and I am interested in studying electromechanical systems. Outside of academics, I play tennis and chess, dance with Stanford Bhangra, hike/explore new places, and spend time with friends/family. ")
                .font(.system(size: 13))
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding()
                .font(.body)
            Button("Click for a Fun Fact!", action: displayFact)
                .foregroundColor(Color.white)
                .padding()
                .background(Color.init(red: 80/255, green: 80/255, blue: 200/255))
                .cornerRadius(5)
            ProgressView(value: progress)
                HStack {
                    Button("Harvest 🌽!", action: { progress += 0.05 })
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.init(red: 80/255, green: 80/255, blue: 200/255))
                        .cornerRadius(5)
                    Button("Eat 🌽!", action: {progress -= 0.05})
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.init(red: 80/255, green: 80/255, blue: 200/255))
                        .cornerRadius(5)
                }
        }
    }
    func displayFact() {
        print("If you drive 5 minutes in any direction from my house, you hit cornfields!")
    }
}

struct AnkushDhawan_Previews: PreviewProvider {
    static var previews: some View {
        AnkushDhawan()
    }
}
