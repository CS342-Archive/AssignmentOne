//
//  ContentView.swift
//  Assignment One
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.62101317361771, longitude: 10.230304550929638), span: MKCoordinateSpan(latitudeDelta: 10.5, longitudeDelta: 10.5))
    var body: some View {
        VStack (alignment: .center, spacing: 20){
            Image("PortraitLina")
                .resizable()
                .frame(width: 120,
                       height: 120)
                .padding()
            Text("Lina Fang")
                .font(.title)
            Text("Hi, I'm Lina! I'm a second-year Master's student in MS&E. I'm from Giengen, a tiny town in Germany, and I did my undergraduate studies in Mechanical Engineering at the Technical University of Munich. I am passionate about solving problems at the intersection of technology and health, and I strive to become an entrepreneur in this space one day. In my free time, I love traveling, all sorts of outdoor activities, cooking and eating delicious food, and playing the violin and the piano.")
                .padding()
            Map(coordinateRegion: $region)
                .padding()
            Link("My LinkedIn Profile", destination: URL(string: "https://www.linkedin.com/in/linafang/")!)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
