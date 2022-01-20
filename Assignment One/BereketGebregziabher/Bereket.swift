//
//  ContentView.swift
//  BG
//
//  Created by Bereket Abate Gebregziabher on 1/17/22.
//

import SwiftUI
import MapKit

struct Bereket: View {
    @State private var showGreeting = true
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 14.1636, longitude: 38.8937), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))

    var body: some View {

        VStack {
            Map(coordinateRegion: $region)
                            .frame(height: 300)
            Image("BG")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                .offset(y: -130)
                .padding(.bottom, -130)
                }
        Text("Bereket Gebregziabher")
        Divider()
        Toggle("More about me", isOn: $showGreeting)
        if showGreeting {
                        Text("Hi! My name is Bereket and I'm from Tigray. I am a first-year medical student at stanford. I studied Chemistry at Haverford College and graduated in 2018. I have been working in cancer immunotherapy at the University of Pennsylvania for the past two and a half years. I love playing soccer and cooking. Looking forward to getting to know everyone and build CHOIR")
                            .font(.subheadline)
    


                    }

    }

}

struct Bereket_Previews: PreviewProvider {
    static var previews: some View {
        Bereket()
    }
}
