//
//  ContentView.swift
//  Assignment One
//

import SwiftUI
import MapKit

struct GauravLuthria: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.4275, longitude: -122.1697), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))

    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
        VStack {
            Text("Today's Date is: ")
            Text(Date(), style: .date)
            Image("GauravLuthria")
                .clipShape(Circle())
            Text("Gaurav Luthria")
                .font(.title3)
                .fontWeight(.heavy)
            Text("I am a first year medical student at Stanford and an aspiring physician scientist. I am interested in translational research, medical innovation, oncology, and biomedical informatics. In addition to medicine and research, I love playing and watching sports, especially basketball. I also enjoy watching Netflix, exploring places to eat, and playing board games. To demonstrate two SwiftUI features I have added my today's date and my location")
                .font(.subheadline)
                .padding()
            
            Map(coordinateRegion: $region)
                .frame(height: 200.0)
                


        }

        }
        

    }
}
