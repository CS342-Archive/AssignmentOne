//
//  RonitJain.swift
//  Assignment One
//
//  Created by Ronit Jain on 1/17/22.
//

import SwiftUI
import MapKit

struct RonitJain: View {
    @State private var displayFact = false
    @State private var region = MKCoordinateRegion(center: .init(latitude: 47.6101, longitude: -122.2015), latitudinalMeters: 300, longitudinalMeters: 300)
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
        VStack{
            Image("ronit")
                .resizable()
                .frame(width: 155, height: 150)
                .cornerRadius(30)
            Text("Ronit Jain")
                .font(.largeTitle)
                .bold()
                .fontWeight(.heavy)
            Text("I'm a second-year undergrad studying English and Biocomputation, with interests in literary criticism, the digital humanities, and science communication. In my free time, I love exploring Seattle's many trails, reading, and people-watching. My favorite food is an Indian street food called pani puri!")
                .font(.subheadline)
            Button(
                action: {
                    displayFact = true
                },
                label: { Text("Click for a fun fact about me!") }
            ).alert(isPresented: $displayFact, content: {
                Alert(title: Text("Fun Fact"), message: Text("My birthday is on the last day of the year!"))
            })
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
            Map(coordinateRegion: $region)
                .frame(height: 200.0)
            Text("A map of where I'm from: Bellevue, WA!")
                .font(.caption)
            }
        }
    }
}

struct RonitJain_Previews: PreviewProvider {
    static var previews: some View {
        RonitJain()
    }
}
